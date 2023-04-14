module Git2
  @[Link("git2")]
  lib LibGit2
    alias Int = ::LibC::Int
    alias UInt = ::LibC::UInt

    alias GitAnnotatedCommit = Void
    alias GitBlame = Void
    alias GitBlob = Void
    alias GitBranchIterator = Void
    alias GitCommit = Void
    alias GitConfig = Void
    alias GitConfigBackend = Void
    alias GitConfigIterator = Void
    alias GitCredential = Void
    alias GitCredentialDefault = Void
    alias GitCredentialSshCustom = Void
    alias GitCredentialSshInteractive = Void
    alias GitCredentialSshKey = Void
    alias GitCredentialUsername = Void
    alias GitDescribeResult = Void
    alias GitDiff = Void
    alias GitDiffStats = Void
    alias GitFilter = Void
    alias GitFilterList = Void
    alias GitFilterSource = Void
    alias GitIndex = Void
    alias GitIndexConflictIterator = Void
    alias GitIndexIterator = Void
    alias GitIndexer = Void
    alias GitMailmap = Void
    alias GitMergeDriverSource = Void
    alias GitNote = Void
    alias GitNoteIterator = Void
    alias GitObject = Void
    alias GitOdb = Void
    alias GitOdbBackend = Void
    alias GitOdbObject = Void
    alias GitOidShorten = Void
    alias GitPackbuilder = Void
    alias GitPatch = Void
    alias GitPathspec = Void
    alias GitPathspecMatchList = Void
    alias GitPush = Void
    alias GitRebase = Void
    alias GitRefdb = Void
    alias GitRefdbBackend = Void
    alias GitReference = Void
    alias GitReferenceIterator = Void
    alias GitReflog = Void
    alias GitReflogEntry = Void
    alias GitRefspec = Void
    alias GitRemote = Void
    alias GitRepository = Void
    alias GitRevwalk = Void
    alias GitStatusList = Void
    alias GitSubmodule = Void
    alias GitTag = Void
    alias GitTransaction = Void
    alias GitTransport = Void
    alias GitTree = Void
    alias GitTreeEntry = Void
    alias GitTreebuilder = Void
    alias GitWorktree = Void

    @[Flags]
    enum GitApplyFlagsT
      GIT_APPLY_CHECK
    end

    enum GitApplyLocationT
      GIT_APPLY_LOCATION_WORKDIR
      GIT_APPLY_LOCATION_INDEX
      GIT_APPLY_LOCATION_BOTH
    end

    enum GitAttrValueT
      GIT_ATTR_VALUE_UNSPECIFIED
      GIT_ATTR_VALUE_TRUE
      GIT_ATTR_VALUE_FALSE
      GIT_ATTR_VALUE_STRING
    end

    @[Flags]
    enum GitBlameFlagT
      GIT_BLAME_NORMAL
      GIT_BLAME_TRACK_COPIES_SAME_FILE
      GIT_BLAME_TRACK_COPIES_SAME_COMMIT_MOVES
      GIT_BLAME_TRACK_COPIES_SAME_COMMIT_COPIES
      GIT_BLAME_TRACK_COPIES_ANY_COMMIT_COPIES
      GIT_BLAME_FIRST_PARENT
      GIT_BLAME_USE_MAILMAP
      GIT_BLAME_IGNORE_WHITESPACE
    end

    @[Flags]
    enum GitBlobFilterFlagT
      GIT_BLOB_FILTER_CHECK_FOR_BINARY
      GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES
      GIT_BLOB_FILTER_ATTRIBUTES_FROM_HEAD
    end

    enum GitBranchT
      GIT_BRANCH_LOCAL
      GIT_BRANCH_REMOTE
      GIT_BRANCH_ALL
    end

    @[Flags]
    enum GitCertSshT
      GIT_CERT_SSH_MD5
      GIT_CERT_SSH_SHA1
      GIT_CERT_SSH_SHA256
    end

    enum GitCertT
      GIT_CERT_NONE
      GIT_CERT_X509
      GIT_CERT_HOSTKEY_LIBSSH2
      GIT_CERT_STRARRAY
    end

    @[Flags]
    enum GitCheckoutNotifyT : UInt
      GIT_CHECKOUT_NOTIFY_NONE      = 0
      GIT_CHECKOUT_NOTIFY_CONFLICT
      GIT_CHECKOUT_NOTIFY_DIRTY
      GIT_CHECKOUT_NOTIFY_UPDATED
      GIT_CHECKOUT_NOTIFY_UNTRACKED
      GIT_CHECKOUT_NOTIFY_IGNORED
      GIT_CHECKOUT_NOTIFY_ALL       = 0x0FFFF
    end

    @[Flags]
    enum GitCheckoutStrategyT : UInt
      GIT_CHECKOUT_NONE                    = 0
      GIT_CHECKOUT_SAFE
      GIT_CHECKOUT_FORCE
      GIT_CHECKOUT_RECREATE_MISSING
      GIT_CHECKOUT_ALLOW_CONFLICTS
      GIT_CHECKOUT_REMOVE_UNTRACKED
      GIT_CHECKOUT_REMOVE_IGNORED
      GIT_CHECKOUT_UPDATE_ONLY
      GIT_CHECKOUT_DONT_UPDATE_INDEX
      GIT_CHECKOUT_NO_REFRESH
      GIT_CHECKOUT_SKIP_UNMERGED
      GIT_CHECKOUT_USE_OURS
      GIT_CHECKOUT_USE_THEIRS
      GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH
      GIT_CHECKOUT_SKIP_LOCKED_DIRECTORIES = 1 << 18
      GIT_CHECKOUT_DONT_OVERWRITE_IGNORED
      GIT_CHECKOUT_CONFLICT_STYLE_MERGE
      GIT_CHECKOUT_CONFLICT_STYLE_DIFF3
      GIT_CHECKOUT_DONT_REMOVE_EXISTING
      GIT_CHECKOUT_DONT_WRITE_INDEX
    end

    enum GitCloneLocalT
      GIT_CLONE_LOCAL_AUTO
      GIT_CLONE_LOCAL
      GIT_CLONE_NO_LOCAL
      GIT_CLONE_LOCAL_NO_LINKS
    end

    enum GitConfigLevelT
      GIT_CONFIG_LEVEL_PROGRAMDATA = 1
      GIT_CONFIG_LEVEL_SYSTEM
      GIT_CONFIG_LEVEL_XDG
      GIT_CONFIG_LEVEL_GLOBAL
      GIT_CONFIG_LEVEL_LOCAL
      GIT_CONFIG_LEVEL_APP
      GIT_CONFIG_HIGHEST_LEVEL     = -1
    end

    enum GitConfigmapT
      GIT_CONFIGMAP_FALSE
      GIT_CONFIGMAP_TRUE
      GIT_CONFIGMAP_INT32
      GIT_CONFIGMAP_STRING
    end

    @[Flags]
    enum GitCredentialT
      GIT_CREDENTAIL_USERPASS_PLAINTEXT
      GIT_CREDENTAIL_SSH_KEY
      GIT_CREDENTAIL_SSH_CUSTOM
      GIT_CREDENTAIL_DEFAULT
      GIT_CREDENTAIL_SSH_INTERACTIVE
      GIT_CREDENTAIL_USERNAME
      GIT_CREDENTAIL_SSH_MEMORY
    end

    fun git_libgit2_features : Int
    fun git_libgit2_init : Int
    fun git_libgit2_opts(option : Int) : Int
    fun git_libgit2_shutdown : Int
    fun git_libgit2_version(major : Int*, minor : Int*, rev : Int*) : Int
  end
end
