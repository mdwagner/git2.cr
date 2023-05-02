module Git2
  class ConfigEntry
    # Name of the entry (normalised)
    getter(name) { String.new(@config_entry.value.name) }

    # String value of the entry
    getter(value) { String.new(@config_entry.value.value) }

    # Depth of includes where this variable was found
    getter(include_depth) { @config_entry.value.include_depth }

    # Which config file this was found in
    getter(level : GitConfigLevelT) { @config_entry.value.level }

    protected def initialize(@config_entry : LibGit2::GitConfigEntry*)
    end

    def to_unsafe
      @config_entry
    end

    def finalize
      LibGit2.git_config_entry_free(self)
    end
  end
end
