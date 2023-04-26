require "./git2/*"

module Git2
  module Helpers
    extend self

    def check_error(error : Int32, message = "", extra : String? = nil)
      return if error == 0
      msg = ""
      spacer = ""
      if (err = LibGit2.git_error_last) && err.value.message
        msg = err.value.message
        spacer = " - "
      end
      if extra
        abort "#{message} '#{extra}' [#{error}]#{spacer}#{msg}"
      else
        abort "#{message} [#{error}]#{spacer}#{msg}"
      end
    end
  end

  class Config
    # Allocate a new config object
    #
    # This object is empty, so you have to add a file to it before
    # you can do anything with it.
    def self.empty : Config
      code = LibGit2.git_config_new(out config)
      Helpers.check_error(code, "Failed to allocate empty config")
      new(config)
    end

    # Open the global, XDG and system config files
    #
    # Utility wrapper that finds the global, XDG and system configuration
    # files and opens them into a single prioritized config object that
    # can be used when accessing default config data outside a repository.
    def self.open_default : Config
      code = LibGit2.git_config_open_default(out config)
      Helpers.check_error(code, "Failed to open default config files")
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
      code = LibGit2.git_config_open_global(out global_config, config)
      Helpers.check_error(code, "Failed to open global config files")
      new(global_config)
    end

    # Build a single-level focused config object from a multi-level one
    #
    # The returned config object can be used to perform get/set/delete operations
    # on a single specific level.
    # Getting several times the same level from the same parent multi-level config
    # will return different config instances, but containing the same config_file
    # instance.
    def self.open_level(parent : Config, level : LibGit2::GitConfigLevelT) : Config
      code = LibGit2.git_config_open_level(out config, parent, level)
      Helpers.check_error(code, "Failed to build single-level focused config")
      new(config)
    end

    # Create a new config instance containing a single on-disk file
    #
    # This method is a simple utility wrapper for the following:
    # `Config.empty`, `Config#add_file_ondisk`
    def self.open_ondisk(path : Path) : Config
      code = LibGit2.git_config_open_ondisk(out config, path.to_native.to_s)
      Helpers.check_error(code, "Failed to create new config")
      new(config)
    end

    # Parse string as `type`
    #
    # `Bool` - Valid values for true are: 'true', 'yes', 'on', 1 or any
    # number different from 0. Valid values for false are: 'false', 'no',
    # 'off', 0.
    #
    # `Int32`, `Int64` - An optional value suffix of 'k', 'm', or 'g'
    # will cause the value to be multiplied by 1_024, 1_048_576, or
    # 1_073_741_824 prior to output.
    #
    # `Path` - A leading '~' will be expanded to the global search path
    # (which defaults to the user's home directory but can be overridden
    # via `git_libgit2_opts()`. If the value does not begin with a tilde,
    # the input will be returned.
    def self.parse(value : String, type : T.class) : T.class forall T
      case type
      when Bool
        code = LibGit2.git_config_parse_bool(out result, value)
        Helpers.check_error(code, "Failed to parse value as #{type}")
        result == 0
      when Int32
        code = LibGit2.git_config_parse_int32(out result, value)
        Helpers.check_error(code, "Failed to parse value as #{type}")
        result
      when Int64
        code = LibGit2.git_config_parse_int64(out result, value)
        Helpers.check_error(code, "Failed to parse value as #{type}")
        result
      when Path
        code = LibGit2.git_config_parse_path(out buf, value)
        Helpers.check_error(code, "Failed to parse value as #{type}")
        str = String.new(buf.ptr)
        Path.new(str)
      else
        raise "Type not supported: #{type}"
      end
    end

    protected def initialize(@config : LibGit2::GitConfig*)
    end

    # See `Config.open_global`
    def open_global : Config
      self.class.open_global(self)
    end

    def open_level(level : LibGit2::GitConfigLevelT) : Config
      self.class.open_level(self, level)
    end

    def []=(name : String, value : String) : Nil
      code = LibGit2.git_config_set_string(@config, name, value)
      Helpers.check_error(code, "Failed to set config")
    end

    def []=(name : String, value : Bool) : Nil
      code = LibGit2.git_config_set_bool(@config, name, value)
      Helpers.check_error(code, "Failed to set config")
    end

    def []=(name : String, value : Int32) : Nil
      code = LibGit2.git_config_set_int32(@config, name, value)
      Helpers.check_error(code, "Failed to set config")
    end

    def []=(name : String, value : Int64) : Nil
      code = LibGit2.git_config_set_int64(@config, name, value)
      Helpers.check_error(code, "Failed to set config")
    end

    # Set a multivar in the local config file
    #
    # The regex is applied case-sensitively on the value.
    def gsub(name : String, regex : Regex, value : String) : Nil
      code = LibGit2.git_config_set_multivar(@config, name, regex.source, value)
      Helpers.check_error(code, "Failed to set multivar config")
    end

    # Returns a new snapshot of the config, as a new Config instance
    #
    # Create a snapshot of the current state of a configuration,
    # which allows you to look into a consistent view of the configuration
    # for looking up complex values (e.g. a remote, submodule).
    def snapshot : Config
      code = LibGit2.git_config_snapshot(out snapshot_config, @config)
      Helpers.check_error(code, "Failed to snaphsot config")
      self.class.new(snapshot_config)
    end

    def to_unsafe
      @config
    end

    def finalize
      LibGit2.git_config_free(@config)
    end
  end

  class Repository
    def self.init(path : Path, bare = false)
      code = LibGit2.git_repository_init(out repo, path.to_native.to_s, bare)
      Helpers.check_error(code, "Could not initialize repository")
      new(repo)
    end

    protected def initialize(@repo : LibGit2::GitRepository*)
    end

    def config : Config
      code = LibGit2.git_repository_config(out config, repo)
      Helpers.check_error(code, "Failed to get config")
      Config.new(config)
    end

    def to_unsafe : LibGit2::GitRepository*
      @repo
    end

    def finalize
      LibGit2.git_repository_free(@repo)
    end
  end
end
