module Git2
  class Repository
    def self.init(path : Path, bare = false) : Repository
      Error.check! LibGit2.git_repository_init(out repo, path.to_native.to_s, bare.to_unsafe.to_u)
      new(repo)
    end

    protected def initialize(@repo : LibGit2::GitRepository*)
    end

    # Check if a repository is bare
    def bare? : Bool
      LibGit2.git_repository_is_bare(self) == 1
    end

    # Check if a repository is empty
    #
    # An empty repository has just been initialized and contains no references
    # apart from HEAD, which must be pointing to the unborn master branch.
    def empty? : Bool
      result = LibGit2.git_repository_is_empty(self)
      Error.check!(result) if result < 0
      result == 1
    end

    # Determine if the repository was a shallow clone
    def shallow? : Bool
      LibGit2.git_repository_is_shallow(self) == 1
    end

    # Check if a repository is a linked work tree
    def worktree? : Bool
      LibGit2.git_repository_is_worktree(self) == 1
    end

    def state : GitRepositoryStateT
      GitRepositoryStateT.from_value(LibGit2.git_repository_state(self))
    end

    def config : Config
      Error.check! LibGit2.git_repository_config(out config, self)
      Config.new(config)
    end

    def signature : Signature
      Signature.default(self)
    end

    def to_unsafe
      @repo
    end

    def finalize
      LibGit2.git_repository_free(self)
    end
  end
end
