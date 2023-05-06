module Git2
  class Index
    protected def initialize(@index : LibGit2::GitIndex*)
    end

    # Clear the contents (all the entries) of an index object
    #
    # This clears the index object in memory; changes must be explicitly
    # written to disk for them to take effect persistently.
    def clear : Nil
      LibGit2.git_index_clear(self)
    end

    def to_unsafe
      @index
    end

    def finalize
      LibGit2.git_index_free(self)
    end
  end
end
