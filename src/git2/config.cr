module Git2
  class Config
    # Allocate a new config object
    #
    # This object is empty, so you have to add a file to it before
    # you can do anything with it.
    def self.empty : Config
      Error.check! LibGit2.git_config_new(out config)
      new(config)
    end

    # Open the global, XDG and system config files
    #
    # Utility wrapper that finds the global, XDG and system configuration
    # files and opens them into a single prioritized config object that
    # can be used when accessing default config data outside a repository.
    def self.open_default : Config
      Error.check! LibGit2.git_config_open_default(out config)
      new(config)
    end

    # Open the global/XDG config file according to git's rules
    #
    # Git allows you to store your global configuration at `$HOME/.gitconfig`
    # or `$XDG_CONFIG_HOME/git/config`.
    # For backwards compatability, the XDG file shouldn't be used unless
    # the user has created it explicitly. This method opens the correct one
    # to write to.
    def self.open_global(config : Config) : Config
      Error.check! LibGit2.git_config_open_global(out global_config, config)
      new(global_config)
    end

    # Build a single-level focused config object from a multi-level one
    #
    # The returned config object can be used to perform get/set/delete operations
    # on a single specific level.
    # Getting several times the same level from the same parent multi-level config
    # will return different config instances, but containing the same config_file
    # instance.
    def self.open_level(parent : Config, level : GitConfigLevelT) : Config
      Error.check! LibGit2.git_config_open_level(out config, parent, level)
      new(config)
    end

    # Create a new config instance containing a single on-disk file
    #
    # This method is a simple utility wrapper for the following:
    # `Config.empty`, `Config.add_file_ondisk`
    def self.open_ondisk(path : Path) : Config
      Error.check! LibGit2.git_config_open_ondisk(out config, path.to_native.to_s)
      new(config)
    end

    # Add an on-disk config file instance to an existing config
    #
    # The on-disk file pointed at by path will be opened and parsed;
    # it's expected to be a native Git config file following the
    # default Git config syntax (see man git-config).
    #
    # If the file does not exist, the file will still be added and
    # it will be created the first time we write to it.
    #
    # Further queries on this config object will access each of the config file
    # instances in order (instances with a higher priority level will be accessed first).
    def self.add_file_ondisk(config : Config, path : Path, level : GitConfigLevelT, repo : Repository? = nil, force = false) : Nil
      Error.check! LibGit2.git_config_add_file_ondisk(config, path.to_native.to_s, level, repo, force.to_unsafe.to_u)
    end

    # Parse string as `Bool`
    #
    # Valid values for true are: 'true', 'yes', 'on', 1 or
    # any number different from 0.
    #
    # Valid values for false are: 'false', 'no', 'off', 0.
    def self.parse(value : String, _type : Bool.class) : Bool
      Error.check! LibGit2.git_config_parse_bool(out result, value)
      result == 1
    end

    # Parse string as `Int32`
    #
    # An optional value suffix of 'k', 'm', or 'g' will cause the
    # value to be multiplied by 1_024, 1_048_576, or
    # 1_073_741_824 prior to output.
    def self.parse(value : String, _type : Int32.class) : Int32
      Error.check! LibGit2.git_config_parse_int32(out result, value)
      result
    end

    # Parse string as `Int64`
    #
    # An optional value suffix of 'k', 'm', or 'g' will cause the
    # value to be multiplied by 1_024, 1_048_576, or
    # 1_073_741_824 prior to output.
    def self.parse(value : String, _type : Int64.class) : Int64
      Error.check! LibGit2.git_config_parse_int64(out result, value)
      result
    end

    # Parse string as `Path`
    #
    # A leading '~' will be expanded to the global search path
    # (which defaults to the user's home directory but can be overridden
    # via `git_libgit2_opts()`.
    #
    # If the value does not begin with a tilde, the input will be returned.
    def self.parse(value : String, _type : Path.class) : Path
      Error.check! LibGit2.git_config_parse_path(out buf, value)
      Path.new(String.new(buf.ptr))
    end

    protected def initialize(@config : LibGit2::GitConfig*)
    end

    # See `Config.open_global`
    def open_global : Config
      Config.open_global(self)
    end

    # See `Config.open_level`
    def open_level(level : GitConfigLevelT) : Config
      Config.open_level(self, level)
    end

    # See `Config.add_file_ondisk`
    def add_file_ondisk(path : Path, level : GitConfigLevelT, repo : Repository? = nil, force = false) : Nil
      Config.add_file_ondisk(self, path, level, repo, force)
    end

    # Set the value of a string config variable in the config file
    # with the highest level (usually the local one)
    def []=(name : String, value : String) : Nil
      Error.check! LibGit2.git_config_set_string(self, name, value)
    end

    # Set the value of a boolean config variable in the config file
    # with the highest level (usually the local one)
    def []=(name : String, value : Bool) : Nil
      Error.check! LibGit2.git_config_set_bool(self, name, value)
    end

    # Set the value of an integer config variable in the config file
    # with the highest level (usually the local one)
    def []=(name : String, value : Int32) : Nil
      Error.check! LibGit2.git_config_set_int32(self, name, value)
    end

    # Set the value of a long integer config variable in the config file
    # with the highest level (usually the local one)
    def []=(name : String, value : Int64) : Nil
      Error.check! LibGit2.git_config_set_int64(self, name, value)
    end

    # Set a multivar in the local config file
    #
    # The regex is applied case-sensitively on the value.
    def set_multivar(name : String, regex : Regex, value : String) : Nil
      Error.check! LibGit2.git_config_set_multivar(self, name, regex.source, value)
    end

    # Delete a config variable from the config file
    # with the highest level (usually the local one)
    def delete(name : String) : Nil
      Error.check! LibGit2.git_config_delete_entry(self, name)
    end

    # Deletes one or several entries from a multivar in the local config file
    #
    # The regex is applied case-sensitively on the value.
    def delete_multivar(name : String, regex : Regex) : Nil
      Error.check! LibGit2.git_config_delete_multivar(self, name, regex.source)
    end

    # Perform an operation on each config variable
    def each(&block : ConfigEntry ->) : Nil
      boxed_data = Box(typeof(block)).box(block)
      Error.check! LibGit2.git_config_foreach(self, ->(entry, payload) {
        begin
          Box(typeof(block)).unbox(payload).call(ConfigEntry.new(entry))
          0
        rescue
          -1
        end
      }, boxed_data)
    end

    # Perform an operation on each config variable matching a regular expression
    #
    # This behaves like `Config#each` with an additional filter of a regular expression
    # that filters which config keys are passed to the callback.
    #
    # The regular expression is applied case-sensitively on the normalized form of the variable name:
    # - the section and variable parts are lower-cased
    # - the subsection is left unchanged
    def each_match(regex : Regex, &block : ConfigEntry ->) : Nil
      boxed_data = Box(typeof(block)).box(block)
      Error.check! LibGit2.git_config_foreach_match(self, regex.source, ->(entry, payload) {
        begin
          Box(typeof(block)).unbox(payload).call(ConfigEntry.new(entry))
          0
        rescue
          -1
        end
      }, boxed_data)
    end

    # Returns a new snapshot of the config, as a new Config instance
    #
    # Create a snapshot of the current state of a configuration,
    # which allows you to look into a consistent view of the configuration
    # for looking up complex values (e.g. a remote, submodule).
    def snapshot : Config
      Error.check! LibGit2.git_config_snapshot(out snapshot_config, self)
      Config.new(snapshot_config)
    end

    def to_unsafe
      @config
    end

    def finalize
      LibGit2.git_config_free(self)
    end
  end
end
