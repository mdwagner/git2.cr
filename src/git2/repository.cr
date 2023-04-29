module Git2
  class Repository
    def self.init(path : Path, bare = false) : Repository
      Error.check!(LibGit2.git_repository_init(out repo, path.to_native.to_s, bare.to_unsafe.to_u))
      new(repo)
    end

    protected def initialize(@repo : LibGit2::GitRepository*)
    end

    def config : Config
      Error.check!(LibGit2.git_repository_config(out config, repo))
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
