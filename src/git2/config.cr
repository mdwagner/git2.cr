module Git2
  class Config
    # Allocate a new config object
    #
    # This object is empty, so you have to add a file to it before
    # you can do anything with it.
    def self.empty : Config
      Error.check!(LibGit2.git_config_new(out config))
      new(config)
    end

    # Open the global, XDG and system config files
    #
    # Utility wrapper that finds the global, XDG and system configuration
    # files and opens them into a single prioritized config object that
    # can be used when accessing default config data outside a repository.
    def self.open_default : Config
      Error.check!(LibGit2.git_config_open_default(out config))
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
      Error.check!(LibGit2.git_config_open_global(out global_config, config))
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
      Error.check!(LibGit2.git_config_open_level(out config, parent, level))
      new(config)
    end

    # Create a new config instance containing a single on-disk file
    #
    # This method is a simple utility wrapper for the following:
    # `Config.empty`, `Config#add_file_ondisk`
    def self.open_ondisk(path : Path) : Config
      Error.check!(LibGit2.git_config_open_ondisk(out config, path.to_native.to_s))
      new(config)
    end

    # Parse string as `Bool`
    #
    # Valid values for true are: 'true', 'yes', 'on', 1 or
    # any number different from 0.
    #
    # Valid values for false are: 'false', 'no', 'off', 0.
    def self.parse(value : String, type : Bool.class) : Bool
      Error.check!(LibGit2.git_config_parse_bool(out result, value))
      result == 1
    end

    # Parse string as `Int32`
    #
    # An optional value suffix of 'k', 'm', or 'g' will cause the
    # value to be multiplied by 1_024, 1_048_576, or
    # 1_073_741_824 prior to output.
    def self.parse(value : String, type : Int32.class) : Int32
      Error.check!(LibGit2.git_config_parse_int32(out result, value))
      result
    end

    # Parse string as `Int64`
    #
    # An optional value suffix of 'k', 'm', or 'g' will cause the
    # value to be multiplied by 1_024, 1_048_576, or
    # 1_073_741_824 prior to output.
    def self.parse(value : String, type : Int64.class) : Int64
      Error.check!(LibGit2.git_config_parse_int64(out result, value))
      result
    end

    # Parse string as `Path`
    #
    # A leading '~' will be expanded to the global search path
    # (which defaults to the user's home directory but can be overridden
    # via `git_libgit2_opts()`.
    #
    # If the value does not begin with a tilde, the input will be returned.
    def self.parse(value : String, type : Path.class) : Path
      Error.check!(LibGit2.git_config_parse_path(out buf, value))
      str = String.new(buf.ptr)
      Path.new(str)
    end

    protected def initialize(@config : LibGit2::GitConfig*)
    end

    # See `Config.open_global`
    def open_global : Config
      self.class.open_global(self)
    end

    def open_level(level : GitConfigLevelT) : Config
      self.class.open_level(self, level)
    end

    def []=(name : String, value : String) : Nil
      Error.check!(LibGit2.git_config_set_string(@config, name, value))
    end

    def []=(name : String, value : Bool) : Nil
      Error.check!(LibGit2.git_config_set_bool(@config, name, value))
    end

    def []=(name : String, value : Int32) : Nil
      Error.check!(LibGit2.git_config_set_int32(@config, name, value))
    end

    def []=(name : String, value : Int64) : Nil
      Error.check!(LibGit2.git_config_set_int64(@config, name, value))
    end

    # Set a multivar in the local config file
    #
    # The regex is applied case-sensitively on the value.
    def set_multivar(name : String, regex : Regex, value : String) : Nil
      Error.check!(LibGit2.git_config_set_multivar(@config, name, regex.source, value))
    end

    # Returns a new snapshot of the config, as a new Config instance
    #
    # Create a snapshot of the current state of a configuration,
    # which allows you to look into a consistent view of the configuration
    # for looking up complex values (e.g. a remote, submodule).
    def snapshot : Config
      Error.check!(LibGit2.git_config_snapshot(out snapshot_config, @config))
      self.class.new(snapshot_config)
    end

    def to_unsafe
      @config
    end

    def finalize
      LibGit2.git_config_free(@config)
    end
  end
end
