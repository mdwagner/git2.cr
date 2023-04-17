module Git2
  @[Link("git2")]
  lib LibGit2
    alias Char = LibC::Char
    alias Int = LibC::Int
    alias UInt = LibC::UInt
    alias UInt16T = LibC::UInt16T
    alias UInt32T = LibC::UInt32T
    alias UInt64T = LibC::UInt64T
    alias Int32T = LibC::Int32T
    alias Int64T = LibC::Int64T
    alias UShort = LibC::UShort
    alias SizeT = LibC::SizeT
    alias Float = LibC::Float

    alias GitObjectSizeT = UInt64T
    alias GitOffT = Int64T
    alias GitTimeT = Int64T

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
    alias LIBSSH2_SESSION = Void
    alias LIBSSH2_USERAUTH_KBDINT_PROMPT = Void
    alias LIBSSH2_USERAUTH_KBDINT_RESPONSE = Void

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
      GIT_CREDENTIAL_USERPASS_PLAINTEXT
      GIT_CREDENTIAL_SSH_KEY
      GIT_CREDENTIAL_SSH_CUSTOM
      GIT_CREDENTIAL_DEFAULT
      GIT_CREDENTIAL_SSH_INTERACTIVE
      GIT_CREDENTIAL_USERNAME
      GIT_CREDENTIAL_SSH_MEMORY
    end

    enum GitDeltaT
      GIT_DELTA_UNMODIFIED
      GIT_DELTA_ADDED
      GIT_DELTA_DELETED
      GIT_DELTA_MODIFIED
      GIT_DELTA_RENAMED
      GIT_DELTA_COPIED
      GIT_DELTA_IGNORED
      GIT_DELTA_UNTRACKED
      GIT_DELTA_TYPECHANGE
      GIT_DELTA_UNREADABLE
      GIT_DELTA_CONFLICTED
    end

    enum GitDescribeStrategyT
      GIT_DESCRIBE_DEFAULT
      GIT_DESCRIBE_TAGS
      GIT_DESCRIBE_ALL
    end

    enum GitDiffBinaryT
      GIT_DIFF_BINARY_NONE
      GIT_DIFF_BINARY_LITERAL
      GIT_DIFF_BINARY_DELTA
    end

    @[Flags]
    enum GitDiffFindT : UInt
      GIT_DIFF_FIND_BY_CONFIG                  = 0
      GIT_DIFF_FIND_RENAMES
      GIT_DIFF_FIND_RENAMES_FROM_REWRITES
      GIT_DIFF_FIND_COPIES
      GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED
      GIT_DIFF_FIND_REWRITES
      GIT_DIFF_BREAK_REWRITES
      GIT_DIFF_FIND_AND_BREAK_REWRITES         = GIT_DIFF_FIND_REWRITES | GIT_DIFF_BREAK_REWRITES
      GIT_DIFF_FIND_FOR_UNTRACKED              = 1 << 6
      GIT_DIFF_FIND_ALL                        = 0x0FF
      GIT_DIFF_FIND_IGNORE_LEADING_WHITESPACE  =     0
      GIT_DIFF_FIND_IGNORE_WHITESPACE          = 1 << 12
      GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE
      GIT_DIFF_FIND_EXACTLY_MATCH_ONLY
      GIT_DIFF_BREAK_REWRITES_FOR_RENAMES_ONLY
      GIT_DIFF_FIND_REMOVE_UNMODIFIED
    end

    @[Flags]
    enum GitDiffFlagT : UInt
      GIT_DIFF_FLAG_BINARY
      GIT_DIFF_FLAG_NOT_BINARY
      GIT_DIFF_FLAG_VALID_ID
      GIT_DIFF_FLAG_EXISTS
    end

    @[Flags]
    enum GitDiffFormatEmailFlagsT
      GIT_DIFF_FORMAT_EMAIL_NONE                         = 0
      GIT_DIFF_FORMAT_EMAIL_EXCLUDE_SUBJECT_PATCH_MARKER
    end

    enum GitDiffFormatT : UInt
      GIT_DIFF_FORMAT_PATCH
      GIT_DIFF_FORMAT_PATCH_HEADER
      GIT_DIFF_FORMAT_RAW
      GIT_DIFF_FORMAT_NAME_ONLY
      GIT_DIFF_FORMAT_NAME_STATUS
      GIT_DIFF_FORMAT_PATCH_ID
    end

    enum GitDiffLineT
      GIT_DIFF_LINE_CONTEXT       = 32 # ' '
      GIT_DIFF_LINE_ADDITION      = 43 # '+'
      GIT_DIFF_LINE_DELETION      = 45 # '-'
      GIT_DIFF_LINE_CONTEXT_EOFNL = 61 # '='
      GIT_DIFF_LINE_ADD_EOFNL     = 62 # '>'
      GIT_DIFF_LINE_DEL_EOFNL     = 60 # '<'
      GIT_DIFF_LINE_FILE_HDR      = 70 # 'F'
      GIT_DIFF_LINE_HUNK_HDR      = 72 # 'H'
      GIT_DIFF_LINE_BINARY        = 66 # 'B'
    end

    @[Flags]
    enum GitDiffOptionT : UInt
      GIT_DIFF_NORMAL                          = 0
      GIT_DIFF_REVERSE
      GIT_DIFF_INCLUDE_IGNORED
      GIT_DIFF_RECURSE_IGNORED_DIRS
      GIT_DIFF_INCLUDE_UNTRACKED
      GIT_DIFF_RECURSE_UNTRACKED_DIRS
      GIT_DIFF_INCLUDE_UNMODIFIED
      GIT_DIFF_INCLUDE_TYPECHANGE
      GIT_DIFF_INCLUDE_TYPECHANGE_TREES
      GIT_DIFF_IGNORE_FILEMODE
      GIT_DIFF_IGNORE_SUBMODULES
      GIT_DIFF_IGNORE_CASE
      GIT_DIFF_INCLUDE_CASECHANGE
      GIT_DIFF_DISABLE_PATHSPEC_MATCH
      GIT_DIFF_SKIP_BINARY_CHECK
      GIT_DIFF_ENABLE_FAST_UNTRACKED_DIRS
      GIT_DIFF_UPDATE_INDEX
      GIT_DIFF_INCLUDE_UNREADABLE
      GIT_DIFF_INCLUDE_UNREADABLE_AS_UNTRACKED
      GIT_DIFF_INDENT_HEURISTIC
      GIT_DIFF_FORCE_TEXT                      = 1 << 20
      GIT_DIFF_FORCE_BINARY
      GIT_DIFF_IGNORE_WHITESPACE
      GIT_DIFF_IGNORE_WHITESPACE_CHANGE
      GIT_DIFF_IGNORE_WHITESPACE_EOL
      GIT_DIFF_SHOW_UNTRACKED_CONTENT
      GIT_DIFF_SHOW_UNMODIFIED
      GIT_DIFF_PATIENCE                        = 1 << 28
      GIT_DIFF_MINIMAL
      GIT_DIFF_SHOW_BINARY
    end

    @[Flags]
    enum GitDiffStatsFormatT : UInt
      GIT_DIFF_STATS_NONE            = 0
      GIT_DIFF_STATS_FULL
      GIT_DIFF_STATS_SHORT
      GIT_DIFF_STATS_NUMBER
      GIT_DIFF_STATS_INCLUDE_SUMMARY
    end

    enum GitDirection
      GIT_DIRECTION_FETCH
      GIT_DIRECTION_PUSH
    end

    enum GitErrorCode
      GIT_OK
      GIT_ERROR           =  -1
      GIT_ENOTFOUND       =  -3
      GIT_EEXISTS         =  -4
      GIT_EAMBIGUOUS      =  -5
      GIT_EBUFS           =  -6
      GIT_EUSER           =  -7
      GIT_EBAREREPO       =  -8
      GIT_EUNBORNBRANCH   =  -9
      GIT_EUNMERGED       = -10
      GIT_ENONFASTFORWARD = -11
      GIT_EINVALIDSPEC    = -12
      GIT_ECONFLICT       = -13
      GIT_ELOCKED         = -14
      GIT_EMODIFIED       = -15
      GIT_EAUTH           = -16
      GIT_ECERTIFICATE    = -17
      GIT_EAPPLIED        = -18
      GIT_EPEEL           = -19
      GIT_EEOF            = -20
      GIT_EINVALID        = -21
      GIT_EUNCOMMITTED    = -22
      GIT_EDIRECTORY      = -23
      GIT_EMERGECONFLICT  = -24
      GIT_PASSTHROUGH     = -30
      GIT_ITEROVER        = -31
      GIT_RETRY           = -32
      GIT_EMISMATCH       = -33
      GIT_EINDEXDIRTY     = -34
      GIT_EAPPLYFAIL      = -35
    end

    enum GitErrorT
      GIT_ERROR_NONE
      GIT_ERROR_NOMEMORY
      GIT_ERROR_OS
      GIT_ERROR_INVALID
      GIT_ERROR_REFERENCE
      GIT_ERROR_ZLIB
      GIT_ERROR_REPOSITORY
      GIT_ERROR_CONFIG
      GIT_ERROR_REGEX
      GIT_ERROR_ODB
      GIT_ERROR_INDEX
      GIT_ERROR_OBJECT
      GIT_ERROR_NET
      GIT_ERROR_TAG
      GIT_ERROR_TREE
      GIT_ERROR_INDEXER
      GIT_ERROR_SSL
      GIT_ERROR_SUBMODULE
      GIT_ERROR_THREAD
      GIT_ERROR_STASH
      GIT_ERROR_CHECKOUT
      GIT_ERROR_FETCHHEAD
      GIT_ERROR_MERGE
      GIT_ERROR_SSH
      GIT_ERROR_FILTER
      GIT_ERROR_REVERT
      GIT_ERROR_CALLBACK
      GIT_ERROR_CHERRYPICK
      GIT_ERROR_DESCRIBE
      GIT_ERROR_REBASE
      GIT_ERROR_FILESYSTEM
      GIT_ERROR_PATCH
      GIT_ERROR_WORKTREE
      GIT_ERROR_SHA1
      GIT_ERROR_HTTP
      GIT_ERROR_INTERNAL
    end

    @[Flags]
    enum GitFeatureT
      GIT_FEATURE_THREADS
      GIT_FEATURE_HTTPS
      GIT_FEATURE_SSH
      GIT_FEATURE_NSEC
    end

    enum GitFetchPruneT
      GIT_FETCH_PRUNE_UNSPECIFIED
      GIT_FETCH_PRUNE
      GIT_FETCH_NO_PRUNE
    end

    enum GitFilemodeT
      GIT_FILEMODE_UNREADABLE      = 0o000000
      GIT_FILEMODE_TREE            = 0o040000
      GIT_FILEMODE_BLOB            = 0o100644
      GIT_FILEMODE_BLOB_EXECUTABLE = 0o100755
      GIT_FILEMODE_LINK            = 0o120000
      GIT_FILEMODE_COMMIT          = 0o160000
    end

    @[Flags]
    enum GitFilterFlagT : UInt
      GIT_FILTER_DEFAULT              = 0
      GIT_FILTER_ALLOW_UNSAFE
      GIT_FILTER_NO_SYSTEM_ATTRIBUTES
      GIT_FILTER_ATTRIBUTES_FROM_HEAD
    end

    enum GitFilterModeT
      GIT_FILTER_TO_WORKTREE = 0
      GIT_FILTER_SMUDGE      = GIT_FILTER_TO_WORKTREE
      GIT_FILTER_TO_ODB      = 1
      GIT_FILTER_CLEAN       = GIT_FILTER_TO_ODB
    end

    @[Flags]
    enum GitHashsigOptionT
      GIT_HASHSIG_NORMAL            = 0
      GIT_HASHSIG_IGNORE_WHITESPACE
      GIT_HASHSIG_SMART_WHITESPACE
      GIT_HASHSIG_ALLOW_SMALL_FILES
    end

    @[Flags]
    enum GitIndexAddOptionT : UInt
      GIT_INDEX_ADD_DEFAULT               = 0
      GIT_INDEX_ADD_FORCE
      GIT_INDEX_ADD_DISABLE_PATHSEC_MATCH
      GIT_INDEX_ADD_CHECK_PATHSEC
    end

    @[Flags]
    enum GitIndexCapabilityT
      GIT_INDEX_CAPABILITY_IGNORE_CASE
      GIT_INDEX_CAPABILITY_NO_FILEMODE
      GIT_INDEX_CAPABILITY_NO_SYMLINKS
      GIT_INDEX_CAPABILITY_FROM_OWNER  = -1
    end

    enum GitIndexEntryExtendedFlagT
      GIT_INDEX_ENTRY_INTENT_TO_ADD  = 1 << 13
      GIT_INDEX_ENTRY_SKIP_WORKTREE  = 1 << 14
      GIT_INDEX_ENTRY_EXTENDED_FLAGS = GIT_INDEX_ENTRY_INTENT_TO_ADD | GIT_INDEX_ENTRY_SKIP_WORKTREE
      GIT_INDEX_ENTRY_UPTODATE       = 1 << 2
    end

    enum GitIndexEntryFlagT
      GIT_INDEX_ENTRY_EXTENDED = 0x4000
      GIT_INDEX_ENTRY_VALID    = 0x8000
    end

    enum GitIndexStageT
      GIT_INDEX_STAGE_ANY      = -1
      GIT_INDEX_STAGE_NORMAL   =  0
      GIT_INDEX_STAGE_ANCESTOR
      GIT_INDEX_STAGE_OURS
      GIT_INDEX_STAGE_THEIRS
    end

    enum GitLibgit2OptT
      GIT_OPT_GET_MWINDOW_SIZE
      GIT_OPT_SET_MWINDOW_SIZE
      GIT_OPT_GET_MWINDOW_MAPPED_LIMIT
      GIT_OPT_SET_MWINDOW_MAPPED_LIMIT
      GIT_OPT_GET_SEARCH_PATH
      GIT_OPT_SET_SEARCH_PATH
      GIT_OPT_SET_CACHE_OBJECT_LIMIT
      GIT_OPT_SET_CACHE_MAX_SIZE
      GIT_OPT_ENABLE_CACHING
      GIT_OPT_GET_CACHED_MEMORY
      GIT_OPT_GET_TEMPLATE_PATH
      GIT_OPT_SET_TEMPLATE_PATH
      GIT_OPT_SET_SSL_CERT_LOCATIONS
      GIT_OPT_SET_USER_AGENT
      GIT_OPT_ENABLE_STRICT_OBJECT_CREATION
      GIT_OPT_ENABLE_STRICT_SYMBOLIC_REF_CREATION
      GIT_OPT_SET_SSL_CIPHERS
      GIT_OPT_GET_USER_AGENT
      GIT_OPT_ENABLE_OFS_DELTA
      GIT_OPT_ENABLE_FSYNC_GITDIR
      GIT_OPT_GET_WINDOWS_SHAREMODE
      GIT_OPT_SET_WINDOWS_SHAREMODE
      GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION
      GIT_OPT_SET_ALLOCATOR
      GIT_OPT_ENABLE_UNSAVED_INDEX_SAFETY
      GIT_OPT_GET_PACK_MAX_OBJECTS
      GIT_OPT_SET_PACK_MAX_OBJECTS
      GIT_OPT_DISABLE_PACK_KEEP_FILE_CHECKS
      GIT_OPT_ENABLE_HTTP_EXPECT_CONTINUE
      GIT_OPT_GET_MWINDOW_FILE_LIMIT
      GIT_OPT_SET_MWINDOW_FILE_LIMIT
    end

    @[Flags]
    enum GitMergeAnalysisT
      GIT_MERGE_ANALYSIS_NONE        = 0
      GIT_MERGE_ANALYSIS_NORMAL
      GIT_MERGE_ANALYSIS_UP_TO_DATE
      GIT_MERGE_ANALYSIS_FASTFORWARD
      GIT_MERGE_ANALYSIS_UNBORN
    end

    enum GitMergeFileFavorT
      GIT_MERGE_FILE_FAVOR_NORMAL
      GIT_MERGE_FILE_FAVOR_OURS
      GIT_MERGE_FILE_FAVOR_THEIRS
      GIT_MERGE_FILE_FAVOR_UNION
    end

    @[Flags]
    enum GitMergeFileFlagT
      GIT_MERGE_FILE_DEFAULT                  = 0
      GIT_MERGE_FILE_STYLE_MERGE
      GIT_MERGE_FILE_STYLE_DIFF3
      GIT_MERGE_FILE_SIMPLIFY_ALNUM
      GIT_MERGE_FILE_IGNORE_WHITESPACE
      GIT_MERGE_FILE_IGNORE_WHITESPACE_CHANGE
      GIT_MERGE_FILE_IGNORE_WHITESPACE_EOL
      GIT_MERGE_FILE_DIFF_PATIENCE
      GIT_MERGE_FILE_DIFF_MINIMAL
    end

    @[Flags]
    enum GitMergeFlagT
      GIT_MERGE_FIND_RENAMES
      GIT_MERGE_FAIL_ON_CONFLICT
      GIT_MERGE_SKIP_REUC
      GIT_MERGE_NO_RECURSIVE
    end

    @[Flags]
    enum GitMergePreferenceT
      GIT_MERGE_PREFERENCE_NONE             = 0
      GIT_MERGE_PREFERENCE_NO_FASTFORWARD
      GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY
    end

    enum GitObjectT
      GIT_OBJECT_ANY       = -2
      GIT_OBJECT_INVALID   = -1
      GIT_OBJECT_COMMIT    =  1
      GIT_OBJECT_TREE
      GIT_OBJECT_BLOB
      GIT_OBJECT_TAG
      GIT_OBJECT_OFS_DELTA = 6
      GIT_OBJECT_REF_DELTA
    end

    enum GitOdbStreamT
      GIT_STREAM_RDONLY = 1 << 1
      GIT_STREAM_WRONLY = 1 << 2
      GIT_STREAM_RW     = GIT_STREAM_RDONLY | GIT_STREAM_WRONLY
    end

    enum GitPackbuilderStageT
      GIT_PACKBUILDER_ADDING_OBJECTS
      GIT_PACKBUILDER_DELTAFICATION
    end

    enum GitPathFs
      GIT_PATH_FS_GENERIC
      GIT_PATH_FS_NTFS
      GIT_PATH_FS_HFS
    end

    @[Flags]
    enum GitPathspecFlagT : UInt
      GIT_PATHSPEC_DEFAULT        = 0
      GIT_PATHSPEC_IGNORE_CASE
      GIT_PATHSPEC_USE_CASE
      GIT_PATHSPEC_NO_GLOB
      GIT_PATHSPEC_NO_MATCH_ERROR
      GIT_PATHSPEC_FIND_FAILURES
      GIT_PATHSPEC_FAILURES_ONLY
    end

    enum GitProxyT
      GIT_PROXY_NONE
      GIT_PROXY_AUTO
      GIT_PROXY_SPECIFIED
    end

    enum GitRebaseOperationT
      GIT_REBASE_OPERATION_PICK
      GIT_REBASE_OPERATION_REWORD
      GIT_REBASE_OPERATION_EDIT
      GIT_REBASE_OPERATION_SQUASH
      GIT_REBASE_OPERATION_FIXUP
      GIT_REBASE_OPERATION_EXEC
    end

    @[Flags]
    enum GitReferenceFormatT : UInt
      GIT_REFERENCE_FORMAT_NORMAL            = 0
      GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL
      GIT_REFERENCE_FORMAT_REFSPEC_PATTERN
      GIT_REFERENCE_FORMAT_REFSPEC_SHORTHAND
    end

    enum GitReferenceT
      GIT_REFERENCE_INVALID
      GIT_REFERENCE_DIRECT
      GIT_REFERENCE_SYMBOLIC
      GIT_REFERENCE_ALL      = GIT_REFERENCE_DIRECT | GIT_REFERENCE_SYMBOLIC
    end

    enum GitRemoteAutotagOptionT
      GIT_REMOTE_DOWNLOAD_TAGS_UNSPECIFIED
      GIT_REMOTE_DOWNLOAD_TAGS_AUTO
      GIT_REMOTE_DOWNLOAD_TAGS_NONE
      GIT_REMOTE_DOWNLOAD_TAGS_ALL
    end

    enum GitRemoteCompletionT
      GIT_REMOTE_COMPLETION_DOWNLOAD
      GIT_REMOTE_COMPLETION_INDEXING
      GIT_REMOTE_COMPLETION_ERROR
    end

    @[Flags]
    enum GitRemoteCreateFlags
      GIT_REMOTE_CREATE_SKIP_INSTEADOF
      GIT_REMOTE_CREATE_SKIP_DEFAULT_FETCHSPEC
    end

    @[Flags]
    enum GitRepositoryInitFlagT : UInt
      GIT_REPOSITORY_INIT_BARE
      GIT_REPOSITORY_INIT_NO_REINIT
      GIT_REPOSITORY_INIT_NO_DOTGIT_DIR
      GIT_REPOSITORY_INIT_MKDIR
      GIT_REPOSITORY_INIT_MKPATH
      GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE
      GIT_REPOSITORY_INIT_RELATIVE_GITLINK
    end

    enum GitRepositoryInitModeT
      GIT_REPOSITORY_INIT_SHARED_UMASK
      GIT_REPOSITORY_INIT_SHARED_GROUP = 0o002775
      GIT_REPOSITORY_INIT_SHARED_ALL   = 0o002777
    end

    enum GitRepositoryItemT
      GIT_REPOSITORY_ITEM_GITDIR
      GIT_REPOSITORY_ITEM_WORKDIR
      GIT_REPOSITORY_ITEM_COMMONDIR
      GIT_REPOSITORY_ITEM_INDEX
      GIT_REPOSITORY_ITEM_OBJECTS
      GIT_REPOSITORY_ITEM_REFS
      GIT_REPOSITORY_ITEM_PACKED_REFS
      GIT_REPOSITORY_ITEM_REMOTES
      GIT_REPOSITORY_ITEM_CONFIG
      GIT_REPOSITORY_ITEM_INFO
      GIT_REPOSITORY_ITEM_HOOKS
      GIT_REPOSITORY_ITEM_LOGS
      GIT_REPOSITORY_ITEM_MODULES
      GIT_REPOSITORY_ITEM_WORKTREES
      GIT_REPOSITORY_ITEM__LAST
    end

    @[Flags]
    enum GitRepositoryOpenFlagT
      GIT_REPOSITORY_OPEN_NO_SEARCH
      GIT_REPOSITORY_OPEN_CROSS_FS
      GIT_REPOSITORY_OPEN_BARE
      GIT_REPOSITORY_OPEN_NO_DOTGIT
      GIT_REPOSITORY_OPEN_FROM_ENV
    end

    enum GitRepositoryStateT
      GIT_REPOSITORY_STATE_NONE
      GIT_REPOSITORY_STATE_MERGE
      GIT_REPOSITORY_STATE_REVERT
      GIT_REPOSITORY_STATE_REVERT_SEQUENCE
      GIT_REPOSITORY_STATE_CHERRYPICK
      GIT_REPOSITORY_STATE_CHERRYPICK_SEQUENCE
      GIT_REPOSITORY_STATE_BISECT
      GIT_REPOSITORY_STATE_REBASE
      GIT_REPOSITORY_STATE_REBASE_INTERACTIVE
      GIT_REPOSITORY_STATE_REBASE_MERGE
      GIT_REPOSITORY_STATE_APPLY_MAILBOX
      GIT_REPOSITORY_STATE_APPLY_MAILBOX_OR_REBASE
    end

    enum GitResetT
      GIT_RESET_SOFT  = 1
      GIT_RESET_MIXED
      GIT_RESET_HARD
    end

    @[Flags]
    enum GitRevparseModeT
      GIT_REVPARSE_SINGLE
      GIT_REVPARSE_RANGE
      GIT_REVPARSE_MERGE_BASE
    end

    enum GitSmartServiceT
      GIT_SERVICE_UPLOADPACK_LS  = 1
      GIT_SERVICE_UPLOADPACK
      GIT_SERVICE_RECEIVEPACK_LS
      GIT_SERVICE_RECEIVEPACK
    end

    @[Flags]
    enum GitSortT
      GIT_SORT_NONE        = 0
      GIT_SORT_TOPOLOGICAL
      GIT_SORT_TIME
      GIT_SORT_REVERSE
    end

    @[Flags]
    enum GitStashApplyFlags
      GIT_STASH_APPLY_DEFAULT         = 0
      GIT_STASH_APPLY_REINSTATE_INDEX
    end

    enum GitStashApplyProgressT
      GIT_STASH_APPLY_PROGRESS_NONE
      GIT_STASH_APPLY_PROGRESS_LOADING_STASH
      GIT_STASH_APPLY_PROGRESS_ANALYZE_INDEX
      GIT_STASH_APPLY_PROGRESS_ANALYZE_MODIFIED
      GIT_STASH_APPLY_PROGRESS_ANALYZE_UNTRACKED
      GIT_STASH_APPLY_PROGRESS_CHECKOUT_UNTRACKED
      GIT_STASH_APPLY_PROGRESS_CHECKOUT_MODIFIED
      GIT_STASH_APPLY_PROGRESS_DONE
    end

    @[Flags]
    enum GitStashFlags
      GIT_STASH_DEFAULT           = 0
      GIT_STASH_KEEP_INDEX
      GIT_STASH_INCLUDE_UNTRACKED
      GIT_STASH_INCLUDE_IGNORED
    end

    @[Flags]
    enum GitStatusOptT : UInt
      GIT_STATUS_OPT_INCLUDE_UNTRACKED
      GIT_STATUS_OPT_INCLUDE_IGNORED
      GIT_STATUS_OPT_INCLUDE_UNMODIFIED
      GIT_STATUS_OPT_EXCLUDE_SUBMODULES
      GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS
      GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH
      GIT_STATUS_OPT_RECURSE_IGNORED_DIRS
      GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX
      GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR
      GIT_STATUS_OPT_SORT_CASE_SENSITIVELY
      GIT_STATUS_OPT_SORT_CASE_INSENSITIVELY
      GIT_STATUS_OPT_RENAMES_FROM_REWRITES
      GIT_STATUS_OPT_NO_REFRESH
      GIT_STATUS_OPT_UPDATE_INDEX
      GIT_STATUS_OPT_INCLUDE_UNREADABLE
      GIT_STATUS_OPT_INCLUDE_UNREADABLE_AS_UNTRACKED
    end

    enum GitStatusShowT
      GIT_STATUS_SHOW_INDEX_AND_WORKDIR
      GIT_STATUS_SHOW_INDEX_ONLY
      GIT_STATUS_SHOW_WORKDIR_ONLY
    end

    @[Flags]
    enum GitStatusT : UInt
      GIT_STATUS_CURRENT          = 0
      GIT_STATUS_INDEX_NEW
      GIT_STATUS_INDEX_MODIFIED
      GIT_STATUS_INDEX_DELETED
      GIT_STATUS_INDEX_RENAMED
      GIT_STATUS_INDEX_TYPECHANGE
      GIT_STATUS_WT_NEW
      GIT_STATUS_WT_MODIFIED
      GIT_STATUS_WT_DELETED
      GIT_STATUS_WT_TYPECHANGE
      GIT_STATUS_WT_RENAMED
      GIT_STATUS_WT_UNREADABLE
      GIT_STATUS_IGNORED
      GIT_STATUS_CONFLICTED
    end

    enum GitStreamT
      GIT_STREAM_STANDARD = 1
      GIT_STREAM_TLS
    end

    enum GitSubmoduleIgnoreT
      GIT_SUBMODULE_IGNORE_UNSPECIFIED = -1
      GIT_SUBMODULE_IGNORE_NONE        =  1
      GIT_SUBMODULE_IGNORE_UNTRACKED
      GIT_SUBMODULE_IGNORE_DIRTY
      GIT_SUBMODULE_IGNORE_ALL
    end

    enum GitSubmoduleRecurseT
      GIT_SUBMODULE_RECURSE_NO
      GIT_SUBMODULE_RECURSE_YES
      GIT_SUBMODULE_RECURSE_ONDEMAND
    end

    @[Flags]
    enum GitSubmoduleStatusT
      GIT_SUBMODULE_STATUS_IN_HEAD
      GIT_SUBMODULE_STATUS_IN_INDEX
      GIT_SUBMODULE_STATUS_IN_CONFIG
      GIT_SUBMODULE_STATUS_IN_WD
      GIT_SUBMODULE_STATUS_INDEX_ADDED
      GIT_SUBMODULE_STATUS_INDEX_DELETED
      GIT_SUBMODULE_STATUS_INDEX_MODIFIED
      GIT_SUBMODULE_STATUS_WD_UNINITIALIZED
      GIT_SUBMODULE_STATUS_WD_ADDED
      GIT_SUBMODULE_STATUS_WD_DELETED
      GIT_SUBMODULE_STATUS_WD_MODIFIED
      GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED
      GIT_SUBMODULE_STATUS_WD_WD_MODIFIED
      GIT_SUBMODULE_STATUS_WD_UNTRACKED
    end

    enum GitSubmoduleUpdateT
      GIT_SUBMODULE_UPDATE_CHECKOUT
      GIT_SUBMODULE_UPDATE_REBASE
      GIT_SUBMODULE_UPDATE_MERGE
      GIT_SUBMODULE_UPDATE_NONE
      GIT_SUBMODULE_UPDATE_DEFAULT  = 0
    end

    enum GitTraceLevelT
      GIT_TRACE_NONE
      GIT_TRACE_FATAL
      GIT_TRACE_ERROR
      GIT_TRACE_WARN
      GIT_TRACE_INFO
      GIT_TRACE_DEBUG
      GIT_TRACE_TRACE
    end

    enum GitTreeUpdateT
      GIT_TREE_UPDATE_UPSERT
      GIT_TREE_UPDATE_REMOVE
    end

    enum GitTreewalkMode
      GIT_TREEWALK_PRE
      GIT_TREEWALK_POST
    end

    @[Flags]
    enum GitWorktreePruneT : UInt
      GIT_WORKTREE_PRUNE_VALID
      GIT_WORKTREE_PRUNE_LOCKED
      GIT_WORKTREE_PRUNE_WORKING_TREE
    end

    struct GitOid
      id : Char[20]
    end

    struct GitDiffFile
      id : GitOid
      path : Char*
      size : GitObjectSizeT
      flags : UInt32T
      mode, id_abbrev : UInt16T
    end

    struct GitDiffDelta
      status : GitDeltaT
      flags : UInt16T
      similarity, nfiles : UInt32T
      old_file, new_file : GitDiffFile
    end

    struct GitDiffHunk
      old_start, old_lines, new_start, new_lines : Int
      header_len : SizeT
      header : Char[128]
    end

    struct GitCert
      cert_type : GitCertT
    end

    struct GitCheckoutPerfdata
      mkdir_calls, stat_calls, chmod_calls : SizeT
    end

    struct GitBuf
      ptr : Char*
      asize, size : SizeT
    end

    struct GitConfigEntry
      name, value : Char*
      include_depth : UInt
      level : GitConfigLevelT
      free : GitConfigEntry* -> Void
      payload : Void*
    end

    struct GitRemoteHead
      local : Int
      oid, loid : GitOid
      name, symref_target : Char*
    end

    struct GitDiffBinaryFile
      type : GitDiffBinaryT
      data : Char*
      datalen, inflatedlen : SizeT
    end

    struct GitDiffBinary
      contains_data : UInt
      old_file, new_file : GitDiffBinaryFile
    end

    struct GitDiffLine
      origin : Char
      old_lineno, new_lineno, num_lines : Int
      content_line : SizeT
      content_offset : GitOffT
      content : Char*
    end

    struct GitIndexerProgress
      total_objects, indexed_objects, received_objects, local_objects, total_deltas, indexed_deltas : UInt
      received_bytes : SizeT
    end

    struct GitPushUpdate
      src_refname, dst_refname : Char*
      src, dst : GitOid
    end

    alias GitApplyDeltaCb = GitDiffDelta*, Void* -> Int
    alias GitApplyHunkCb = GitDiffHunk*, Void* -> Int
    alias GitAttrForeachCb = Char*, Char*, Void* -> Int
    alias GitTransportCertificateCheckCb = GitCert*, Int, Char*, Void* -> Int
    alias GitCheckoutNotifyCb = GitCheckoutNotifyT, Char*, GitDiffFile*, GitDiffFile*, GitDiffFile*, Void* -> Int
    alias GitCheckoutProgressCb = Char*, SizeT, SizeT, Void* -> Void
    alias GitCheckoutPerfdataCb = GitCheckoutPerfdata*, Void* -> Void
    alias GitRemoteCreateCb = GitRemote**, GitRepository*, Char*, Char*, Void* -> Int
    alias GitRepositoryCreateCb = GitRepository**, Char*, Int, Void* -> Int
    alias GitCommitSigningCb = GitBuf*, GitBuf*, Char*, Void* -> Int
    alias GitConfigForeachCb = GitConfigEntry*, Void* -> Int
    alias GitCredentialAcquireCb = GitCredential**, Char*, Char*, UInt, Void* -> Int
    alias GitCredentialSignCb = LIBSSH2_SESSION*, Char**, SizeT, Char*, SizeT, Void** -> Int
    alias GitCredentialSshInteractiveCb = Char*, Int, Char*, Int, Int, LIBSSH2_USERAUTH_KBDINT_PROMPT*, LIBSSH2_USERAUTH_KBDINT_RESPONSE*, Void** -> Void
    alias GitHeadlistCb = GitRemoteHead*, Void* -> Int
    alias GitDiffNotifyCb = GitDiff*, GitDiffDelta*, Char*, Void* -> Int
    alias GitDiffProgressCb = GitDiff*, Char*, Char*, Void* -> Int
    alias GitDiffFileCb = GitDiffDelta*, Float, Void* -> Int
    alias GitDiffBinaryCb = GitDiffDelta*, GitDiffBinary*, Void* -> Int
    alias GitDiffHunkCb = GitDiffDelta*, GitDiffHunk*, Void* -> Int
    alias GitDiffLineCb = GitDiffDelta*, GitDiffHunk*, GitDiffLine*, Void* -> Int
    alias GitIndexMatchedPathCb = Char*, Char*, Void* -> Int
    alias GitIndexerProgressCb = GitIndexerProgress*, Void* -> Int
    alias GitNoteForeachCb = GitOid*, GitOid*, Void* -> Int
    alias GitOdbForeachCb = GitOid*, Void* -> Int
    alias GitPackbuilderForeachCb = Void*, SizeT, Void* -> Int
    alias GitPackbuilderProgress = Int, UInt32T, UInt32T, Void* -> Int
    alias GitReferenceForeachCb = GitReference*, Void* -> Int
    alias GitReferenceForeachNameCb = Char*, Void* -> Int
    alias GitPushTransferProgressCb = UInt, UInt, SizeT, Void* -> Int
    alias GitPushNegotiation = GitPushUpdate**, SizeT, Void* -> Int
    alias GitPushUpdateReferenceCb = Char*, Char*, Void* -> Int
    alias GitUrlResolveCb = GitBuf*, Char*, Int, Void* -> Int
    alias GitRepositoryFetchheadForeachCb = Char*, Char*, GitOid*, UInt, Void* -> Int
    alias GitRepositoryMergeheadForeachCb = GitOid*, Void* -> Int
    alias GitRevwalkHideCb = GitOid*, Void* -> Int
    alias GitStashApplyProgressCb = GitStashApplyProgressT, Void* -> Int
    alias GitStashCb = SizeT, Char*, GitOid*, Void* -> Int
    alias GitStatusCb = Char*, UInt, Void* -> Int
    alias GitSubmoduleCb = GitSubmodule*, Char*, Void* -> Int
    alias GitTagForeachCb = Char*, GitOid*, Void* -> Int
    alias GitTraceCb = GitTraceLevelT, Char* -> Void
    alias GitTransportMessageCb = Char*, Int, Void* -> Int
    alias GitTransportCb = GitTransport**, GitRemote*, Void* -> Int
    alias GitTreebuilderFilterCb = GitTreeEntry*, Void* -> Int
    alias GitTreewalkCb = Char*, GitTreeEntry*, Void* -> Int

    struct GitApplyOptions
      version : UInt
      delta_cb : GitApplyDeltaCb
      hunk_cb : GitApplyHunkCb
      payload : Void*
      flags : UInt
    end

    struct GitTime
      time : GitTimeT
      offset : Int
      sign : Char
    end

    struct GitSignature
      name, email : Char*
      _when : GitTime
    end

    struct GitBlameHunk
      lines_in_hunk : SizeT
      final_commit_id : GitOid
      final_start_line_number : SizeT
      final_signature : GitSignature*
      orig_commit_id : GitOid
      orig_path : Char*
      orig_start_line_number : SizeT
      git_signature : GitSignature*
      boundary : Char
    end

    struct GitBlameOptions
      version : UInt
      flags : UInt32T
      min_match_characters : UInt16T
      newest_commit, oldest_commit : GitOid
      min_line, max_line : SizeT
    end

    struct GitBlobFilterOptions
      version : Int
      flags : UInt32T
    end

    struct GitCertHostkey
      parent : GitCert
      type : GitCertSshT
      hash_md5 : Char[16]
      hash_sha1 : Char[20]
      hash_sha256 : Char[32]
    end

    struct GitCertX509
      parent : GitCert
      data : Void*
      len : SizeT
    end

    struct GitStrarray
      strings : Char**
      count : SizeT
    end

    struct GitCheckoutOptions
      version, checkout_strategy : UInt
      disable_filters : Int
      dir_mode, file_mode : UInt
      file_open_flags : Int
      notify_flags : UInt
      notify_cb : GitCheckoutNotifyCb
      notify_payload : Void*
      progress_cb : GitCheckoutProgressCb
      progress_payload : Void*
      paths : GitStrarray
      baseline : GitTree*
      baseline_index : GitIndex*
      target_directory, ancestor_label, our_label, their_label : Char*
      perfdata_cb : GitCheckoutPerfdataCb
      perfdata_payload : Void*
    end

    struct GitDiffSimilarityMetric
      file_signature : Void**, GitDiffFile*, Char*, Void* -> Int
      buffer_signature : Void**, GitDiffFile*, Char*, SizeT, Void* -> Int
      free_signature : Void*, Void* -> Void
      similarity : Int*, Void*, Void*, Void* -> Int
      payload : Void*
    end

    struct GitMergeOptions
      version : UInt
      flags : UInt32T
      rename_threshold, target_limit : UInt
      metric : GitDiffSimilarityMetric*
      recursion_limit : UInt
      default_driver : Char*
      file_favor : GitMergeFileFavorT
      file_flags : UInt32T
    end

    struct GitCherrypickOptions
      version, mainline : UInt
      merge_opts : GitMergeOptions
      checkout_opts : GitCheckoutOptions
    end

    struct GitRemoteCallbacks
      version : UInt
      sideband_progress : GitTransportMessageCb
      completion : GitRemoteCompletionT, Void* -> Int
      credentials : GitCredentialAcquireCb
      certificate_check : GitTransportCertificateCheckCb
      transfer_progress : GitIndexerProgressCb
      update_tips : Char*, GitOid*, GitOid*, Void* -> Int
      pack_progress : GitPackbuilderProgress
      push_transfer_progress : GitPushTransferProgressCb
      push_update_reference : GitPushUpdateReferenceCb
      push_negotiation : GitPushNegotiation
      transport : GitTransportCb
      payload : Void*
      resolve_url : GitUrlResolveCb
    end

    struct GitProxyOptions
      version : UInt
      type : GitProxyT
      url : Char*
      credentials : GitCredentialAcquireCb
      certificate_check : GitTransportCertificateCheckCb
      payload : Void*
    end

    struct GitFetchOptions
      version : UInt
      callbacks : GitRemoteCallbacks
      prune : GitFetchPruneT
      update_fetchhead : Int
      download_tags : GitRemoteAutotagOptionT
      proxy_opts : GitProxyOptions
      custom_headers : GitStrarray
    end

    struct GitCloneOptions
      version : UInt
      checkout_opts : GitCheckoutOptions
      fetch_opts : GitFetchOptions
      bare : Int
      local : GitCloneLocalT
      checkout_branch : Char*
      repository_cb : GitRepositoryCreateCb
      repository_cb_payload : Void*
      remote_cb : GitRemoteCreateCb
      remote_cb_payload : Void*
    end

    struct GitConfigmap
      type : GitConfigmapT
      str_match : Char*
      map_value : Int
    end

    struct GitCredentialUserpassPayload
      username, password : Char*
    end

    struct GitDescribeFormatOptions
      version, abbreviated_size : UInt
      always_use_long_format : Int
      dirty_suffix : Char*
    end

    struct GitDiffFindOptions
      version : UInt
      flags : UInt32T
      rename_threshold : UInt16T
      rename_from_rewrite_threshold, copy_threshold, break_rewrite_threshold : UInt16T
      rename_limit : SizeT
      metric : GitDiffSimilarityMetric*
    end

    struct GitDiffFormatEmailOptions
      version : UInt
      flags : UInt32T
      patch_no, total_patches : SizeT
      id : GitOid*
      summary, body : Char*
      author : GitSignature*
    end

    struct GitDiffOptions
      version : UInt
      flags : UInt32T
      ignore_submodules : GitSubmoduleIgnoreT
      pathspec : GitStrarray
      notify_cb : GitDiffNotifyCb
      progress_cb : GitDiffProgressCb
      payload : Void*
      context_lines, interhunk_lines : UInt32T
      id_abbrev : UInt16T
      max_size : GitOffT
      old_prefix, new_prefix : Char*
    end

    struct GitDiffPatchidOptions
      version : UInt
    end

    struct GitError
      message : Char*
      klass : Int
    end

    struct GitIndexTime
      seconds : Int32T
      nanoseconds : UInt32T
    end

    struct GitIndexEntry
      ctime, mtime : GitIndexTime
      dev, ino, mode, uid, gid, file_size : UInt32T
      id : GitOid
      flags, flags_extended : UInt16T
      path : Char*
    end

    struct GitIndexerOptions
      version : UInt
      progress_cb : GitIndexerProgressCb
      progress_cb_payload : Void*
      verify : Char
    end

    struct GitMergeFileInput
      version : UInt
      ptr : Char*
      size : SizeT
      path : Char*
      mode : UInt
    end

    struct GitMergeFileOptions
      version : UInt
      ancestor_label, our_label, their_label : Char*
      favor : GitMergeFileFavorT
      flags : UInt32T
      marker_size : UShort
    end

    struct GitMergeFileResult
      automergeable : UInt
      path : Char*
      mode : UInt
      ptr : Char*
      len : SizeT
    end

    struct GitMessageTrailer
      key, value : Char*
    end

    struct GitMessageTrailerArray
      trailers : GitMessageTrailer*
      count : SizeT
      trailer_block : Char*
    end

    struct GitOdbExpandId
      id : GitOid
      length : UShort
      type : GitObjectT
    end

    struct GitOdbStream
      backend : GitOdbBackend*
      mode : UInt
      hash_ctx : Void*
      declared_size, received_bytes : GitObjectSizeT
      read : GitOdbStream*, Char*, SizeT -> Int
      write : GitOdbStream*, Char*, SizeT -> Int
      finalized_write : GitOdbStream*, GitOid* -> Int
      free : GitOdbStream* -> Void
    end

    struct GitOdbWritepack
      backend : GitOdbBackend*
      append : GitOdbWritepack*, Void*, SizeT, GitIndexerProgress* -> Int
      commit : GitOdbWritepack*, GitIndexerProgress* -> Int
      free : GitOdbWritepack* -> Void
    end

    struct GitOidarray
      ids : GitOid*
      count : SizeT
    end

    struct GitPushOptions
      version, pb_parallelism : UInt
      callbacks : GitRemoteCallbacks
      proxy_opts : GitProxyOptions
      custom_headers : GitStrarray
    end

    struct GitRebaseOperation
      type : GitRebaseOperationT
      id : GitOid
      exec : Char*
    end

    struct GitRebaseOptions
      version : UInt
      quiet, inmemory : Int
      rewrite_notes_ref : Char*
      merge_options : GitMergeOptions
      checkout_options : GitCheckoutOptions
      signing_cb : GitCommitSigningCb
      payload : Void*
    end

    struct GitRemoteCreateOptions
      version : UInt
      repository : GitRepository*
      name, fetchspec : Char*
      flags : UInt
    end

    struct GitRepositoryInitOptions
      version : UInt
      flags, mode : UInt32T
      workdir_path, description, template_path, initial_head, origin_url : Char*
    end

    struct GitRevertOptions
      version, mainline : UInt
      merge_opts : GitMergeOptions
      checkout_opts : GitCheckoutOptions
    end

    struct GitRevspec
      from, to : GitObject*
      flags : UInt
    end

    struct GitStashApplyOptions
      version : UInt
      flags : UInt32T
      checkout_options : GitCheckoutOptions
      progress_cb : GitStashApplyProgressCb
      progress_payload : Void*
    end

    struct GitStashEntry
      status : GitStatusT
      head_to_index, index_to_workdir : GitDiffDelta*
    end

    struct GitStatusOptions
      version : UInt
      show : GitStatusShowT
      flags : UInt
      pathspec : GitStrarray
      baseline : GitTree*
    end

    struct GitSubmoduleUpdateOptions
      version : UInt
      checkout_opts : GitCheckoutOptions
      fetch_opts : GitFetchOptions
      allow_fetch : Int
    end

    struct GitTreeUpdate
      action : GitTreeUpdateT
      id : GitOid
      filemode : GitFilemodeT
      path : Char*
    end

    struct GitWorktreeAddOptions
      version : UInt
      lock : Int
      ref : GitReference*
    end

    struct GitWorktreePruneOptions
      version : UInt
      flags : UInt32T
    end

    struct GitWritestream
      write : GitWritestream*, Char*, SizeT -> Int
      close : GitWritestream* -> Int
      free : GitWritestream* -> Void
    end

    struct GitDescribeOptions
      version, max_candidates_tags, describe_strategy : UInt
      pattern : Char*
      only_follow_first_parent, show_commit_oid_as_fallback : Int
    end

    fun git_annotated_commit_free(commit : GitAnnotatedCommit*) : Void
    fun git_annotated_commit_from_fetchhead(_out : GitAnnotatedCommit**, repo : GitRepository*, branch_name : Char*, remote_url : Char*, id : GitOid*) : Int
    fun git_annotated_commit_from_ref(_out : GitAnnotatedCommit**, repo : GitRepository*, ref : GitReference*) : Int
    fun git_annotated_commit_from_revspec(_out : GitAnnotatedCommit**, repo : GitRepository*, revspec : Char*) : Int
    fun git_annotated_commit_id(commit : GitAnnotatedCommit*) : GitOid*
    fun git_annotated_commit_lookup(_out : GitAnnotatedCommit**, repo : GitRepository*, id : GitOid*) : Int
    fun git_annotated_commit_ref(commit : GitAnnotatedCommit*) : Char*

    fun git_apply(repo : GitRepository*, diff : GitDiff*, location : GitApplyLocationT, options : GitApplyOptions*) : Int
    fun git_apply_to_tree(_out : GitIndex**, repo : GitRepository*, preimage : GitTree*, diff : GitDiff*, options : GitApplyOptions*) : Int

    fun git_attr_add_macro(repo : GitRepository*, name : Char*, values : Char*) : Int
    fun git_attr_cache_flush(repo : GitRepository*) : Int
    fun git_attr_foreach(repo : GitRepository*, flags : UInt32T, path : Char*, callback : GitAttrForeachCb, payload : Void*) : Int
    fun git_attr_get(value_out : Char**, repo : GitRepository*, flags : UInt32T, path : Char*, name : Char*) : Int
    fun git_attr_get_many(values_out : Char**, repo : GitRepository*, flags : UInt32T, path : Char*, num_attr : SizeT, names : Char**) : Int
    fun git_attr_value(attr : Char*) : GitAttrValueT

    fun git_blame_buffer(_out : GitBlame**, reference : GitBlame*, buffer : Char*, buffer_len : SizeT) : Int
    fun git_blame_file(_out : GitBlame**, repo : GitRepository*, path : Char*, options : GitBlameOptions*) : Int
    fun git_blame_free(blame : GitBlame*) : Void
    fun git_blame_get_hunk_byindex(blame : GitBlame*, index : UInt32T) : GitBlameHunk*
    fun git_blame_get_hunk_byline(blame : GitBlame*, lineno : SizeT) : GitBlameHunk*
    fun git_blame_get_hunk_count(blame : GitBlame*) : UInt32T
    fun git_blame_init_options(opts : GitBlameOptions*, version : UInt) : Int
    fun git_blame_options_init(opts : GitBlameOptions*, version : UInt) : Int

    fun git_blob_create_from_buffer(id : GitOid*, repo : GitRepository*, buffer : Void*, len : SizeT) : Int
    fun git_blob_create_from_disk(id : GitOid*, repo : GitRepository*, path : Char*) : Int
    fun git_blob_create_from_stream(_out : GitWritestream**, repo : GitRepository*, hintpath : Char*) : Int
    fun git_blob_create_from_stream_commit(_out : GitOid*, stream : GitWritestream*) : Int
    fun git_blob_create_from_workdir(id : GitOid*, repo : GitRepository*, relative_path : Char*) : Int
    fun git_blob_create_fromworkdir(id : GitOid*, repo : GitRepository*, relative_path : Char*) : Int
    fun git_blob_dup(_out : GitBlob**, source : GitBlob*) : Int
    fun git_blob_filter(_out : GitBuf*, blob : GitBlob*, as_path : Char*, opts : GitBlobFilterOptions*) : Int
    fun git_blob_filtered_content(_out : GitBuf*, blob : GitBlob*, as_path : Char*, check_for_binary_data : Int) : Int
    fun git_blob_free(blob : GitBlob*) : Void
    fun git_blob_id(blob : GitBlob*) : GitOid*
    fun git_blob_is_binary(blob : GitBlob*) : Int
    fun git_blob_lookup(blob : GitBlob**, repo : GitRepository*, id : GitOid*) : Int
    fun git_blob_lookup_prefix(blob : GitBlob**, repo : GitRepository*, id : GitOid*, len : SizeT) : Int
    fun git_blob_owner(blob : GitBlob*) : GitRepository*
    fun git_blob_rawcontent(blob : GitBlob*) : Void*
    fun git_blob_rawsize(blob : GitBlob*) : GitObjectSizeT

    fun git_branch_create(_out : GitReference**, repo : GitRepository*, branch_name : Char*, target : GitCommit*, force : Int) : Int
    fun git_branch_create_from_annotated(ref_out : GitReference**, repo : GitRepository*, branch_name : Char*, commit : GitAnnotatedCommit*, force : Int) : Int
    fun git_branch_delete(branch : GitReference*) : Int
    fun git_branch_is_checked_out(branch : GitReference*) : Int
    fun git_branch_is_head(branch : GitReference*) : Int
    fun git_branch_iterator_free(iter : GitBranchIterator*) : Void
    fun git_branch_iterator_new(_out : GitBranchIterator**, repo : GitRepository*, list_flags : GitBranchT) : Int
    fun git_branch_lookup(_out : GitReference**, repo : GitRepository*, branch_name : Char*, branch_type : GitBranchT) : Int
    fun git_branch_move(_out : GitReference**, branch : GitReference*, new_branch_name : Char*, force : Int) : Int
    fun git_branch_name(_out : Char**, ref : GitReference*) : Int
    fun git_branch_next(_out : GitReference**, out_type : GitBranchT*, iter : GitBranchIterator*) : Int
    fun git_branch_remote_name(_out : GitBuf*, repo : GitRepository*, refname : Char*) : Int
    fun git_branch_set_upstream(branch : GitReference*, branch_name : Char*) : Int
    fun git_branch_upstream(_out : GitReference**, branch : GitReference*) : Int
    fun git_branch_upstream_name(_out : GitBuf*, repo : GitRepository*, refname : Char*) : Int
    fun git_branch_upstream_remote(buf : GitBuf*, repo : GitRepository*, refname : Char*) : Int

    fun git_buf_contains_nul(buf : GitBuf*) : Int
    fun git_buf_dispose(buffer : GitBuf*) : Void
    fun git_buf_free(buffer : GitBuf*) : Void
    fun git_buf_grow(buffer : GitBuf*, target_size : SizeT) : Int
    fun git_buf_is_binary(buf : GitBuf*) : Int
    fun git_buf_set(buffer : GitBuf*, data : Void*, datalen : SizeT) : Int

    fun git_checkout_head(repo : GitRepository*, opts : GitCheckoutOptions*) : Int
    fun git_checkout_index(repo : GitRepository*, index : GitIndex*, opts : GitCheckoutOptions*) : Int
    fun git_checkout_options_init(opts : GitCheckoutOptions*, version : UInt) : Int
    fun git_checkout_tree(repo : GitRepository*, treeish : GitObject*, opts : GitCheckoutOptions*) : Int

    fun git_cherrypick(repo : GitRepository*, commit : GitCommit*, cherrypick_options : GitCherrypickOptions*) : Int
    fun git_cherrypick_commit(_out : GitIndex**, repo : GitRepository*, cherrypick_commit : GitCommit*, our_commit : GitCommit*, mainline : UInt, merge_options : GitMergeOptions*) : Int
    fun git_cherrypick_options_init(opts : GitCherrypickOptions*, version : UInt) : Int

    fun git_clone(_out : GitRepository**, url : Char*, local_path : Char*, options : GitCloneOptions*) : Int
    fun git_clone_options_init(opts : GitCloneOptions*, version : UInt) : Int

    fun git_commit_amend(id : GitOid*, commit_to_amend : GitCommit*, update_ref : Char*, author : GitSignature*, committer : GitSignature*, message_encoding : Char*, message : Char*, tree : GitTree*) : Int
    fun git_commit_author(commit : GitCommit*) : GitSignature*
    fun git_commit_author_with_mailmap(_out : GitSignature**, commit : GitCommit*, mailmap : GitMailmap*) : Int
    fun git_commit_body(commit : GitCommit*) : Char*
    fun git_commit_committer(commit : GitCommit*) : GitSignature*
    fun git_commit_committer_with_mailmap(_out : GitSignature**, commit : GitCommit*, mailmap : GitMailmap*) : Int
    fun git_commit_create(id : GitOid*, repo : GitRepository*, update_ref : Char*, author : GitSignature*, committer : GitSignature*, message_encoding : Char*, message : Char*, tree : GitTree*, parent_count : SizeT, parents : GitCommit**) : Int
    fun git_commit_create_buffer(_out : GitBuf*, repo : GitRepository*, author : GitSignature*, committer : GitSignature*, message_encoding : Char*, message : Char*, tree : GitTree*, parent_count : SizeT, parents : GitCommit**) : Int
    fun git_commit_create_v(id : GitOid*, repo : GitRepository*, update_ref : Char*, author : GitSignature*, committer : GitSignature*, message_encoding : Char*, message : Char*, tree : GitTree*, parent_count : SizeT) : Int
    fun git_commit_create_with_signature(_out : GitOid*, repo : GitRepository*, commit_content : Char*, signature : Char*, signature_field : Char*) : Int
    fun git_commit_dup(_out : GitCommit**, source : GitCommit*) : Int
    fun git_commit_extract_signature(signature : GitBuf*, signed_data : GitBuf*, repo : GitRepository*, commit_id : GitOid*, field : Char*) : Int
    fun git_commit_free(commit : GitCommit*) : Void
    fun git_commit_header_field(_out : GitBuf*, commit : GitCommit*, field : Char*) : Int
    fun git_commit_id(commit : GitCommit*) : GitOid*
    fun git_commit_lookup(commit : GitCommit**, repo : GitRepository*, id : GitOid*) : Int
    fun git_commit_lookup_prefix(commit : GitCommit**, repo : GitRepository*, id : GitOid*, len : SizeT) : Int
    fun git_commit_message(commit : GitCommit*) : Char*
    fun git_commit_message_encoding(commit : GitCommit*) : Char*
    fun git_commit_message_raw(commit : GitCommit*) : Char*
    fun git_commit_nth_gen_ancestor(ancestor : GitCommit**, commit : GitCommit*, n : UInt) : Int
    fun git_commit_owner(commit : GitCommit*) : GitRepository*
    fun git_commit_parent(_out : GitCommit**, commit : GitCommit*, n : UInt) : Int
    fun git_commit_parent_id(commit : GitCommit*, n : UInt) : GitOid*
    fun git_commit_raw_header(commit : GitCommit*) : Char*
    fun git_commit_summary(commit : GitCommit*) : Char*
    fun git_commit_time(commit : GitCommit*) : GitTimeT
    fun git_commit_time_offset(commit : GitCommit*) : Int
    fun git_commit_tree(tree_out : GitTree**, commit : GitCommit*) : Int
    fun git_commit_tree_id(commit : GitCommit*) : GitOid*

    fun git_config_add_file_ondisk(cfg : GitConfig*, path : Char*, level : GitConfigLevelT, repo : GitRepository*, force : Int) : Int
    fun git_config_backend_foreach_match(backend : GitConfigBackend*, regexp : Char*, callback : GitConfigForeachCb, payload : Void*) : Int
    fun git_config_delete_entry(cfg : GitConfig*, name : Char*) : Int
    fun git_config_delete_multivar(cfg : GitConfig*, name : Char*, regexp : Char*) : Int
    fun git_config_entry_free(entry : GitConfigEntry*) : Void
    fun git_config_find_global(_out : GitBuf*) : Int
    fun git_config_find_programdata(_out : GitBuf*) : Int
    fun git_config_find_system(_out : GitBuf*) : Int
    fun git_config_find_xdg(_out : GitBuf*) : Int
    fun git_config_foreach(cfg : GitConfig*, callback : GitConfigForeachCb, payload : Void*) : Int
    fun git_config_foreach_match(cfg : GitConfig*, regexp : Char*, callback : GitConfigForeachCb, payload : Void*) : Int
    fun git_config_free(cfg : GitConfig*) : Void
    fun git_config_get_bool(_out : Int*, cfg : GitConfig*, name : Char*) : Int
    fun git_config_get_entry(_out : GitConfigEntry**, cfg : GitConfig*, name : Char*) : Int
    fun git_config_get_int32(_out : Int32T*, cfg : GitConfig*, name : Char*) : Int
    fun git_config_get_int64(_out : Int64T*, cfg : GitConfig*, name : Char*) : Int
    fun git_config_get_mapped(_out : Int*, cfg : GitConfig*, name : Char*, maps : GitConfigmap*, map_n : SizeT) : Int
    fun git_config_get_multivar_foreach(cfg : GitConfig*, name : Char*, regexp : Char*, callback : GitConfigForeachCb, payload : Void*) : Int
    fun git_config_get_path(_out : GitBuf*, cfg : GitConfig*, name : Char*) : Int
    fun git_config_get_string(_out : Char**, cfg : GitConfig*, name : Char*) : Int
    fun git_config_get_string_buf(_out : GitBuf*, cfg : GitConfig*, name : Char*) : Int
    fun git_config_iterator_free(iter : GitConfigIterator*) : Void
    fun git_config_iterator_glob_new(_out : GitConfigIterator**, cfg : GitConfig*, regexp : Char*) : Int
    fun git_config_iterator_new(_out : GitConfigIterator**, cfg : GitConfig*) : Int
    fun git_config_lock(tx : GitTransaction**, cfg : GitConfig*) : Int
    fun git_config_lookup_map_value(_out : Int*, maps : GitConfigmap*, map_n : SizeT, value : Char*) : Int
    fun git_config_multivar_iterator_new(_out : GitConfigIterator**, cfg : GitConfig*, name : Char*, regexp : Char*) : Int
    fun git_config_new(_out : GitConfig**) : Int
    fun git_config_next(entry : GitConfigEntry**, iter : GitConfigIterator*) : Int
    fun git_config_open_default(_out : GitConfig**) : Int
    fun git_config_open_global(_out : GitConfig**, config : GitConfig*) : Int
    fun git_config_open_level(_out : GitConfig**, parent : GitConfig*, level : GitConfigLevelT) : Int
    fun git_config_open_ondisk(_out : GitConfig**, path : Char*) : Int
    fun git_config_parse_bool(_out : Int*, value : Char*) : Int
    fun git_config_parse_int32(_out : Int32T*, value : Char*) : Int
    fun git_config_parse_int64(_out : Int64T*, value : Char*) : Int
    fun git_config_parse_path(_out : GitBuf*, value : Char*) : Int
    fun git_config_set_bool(cfg : GitConfig*, name : Char*, value : Int) : Int
    fun git_config_set_int32(cfg : GitConfig*, name : Char*, value : Int32T) : Int
    fun git_config_set_int64(cfg : GitConfig*, name : Char*, value : Int64T) : Int
    fun git_config_set_multivar(cfg : GitConfig*, name : Char*, regexp : Char*, value : Char*) : Int
    fun git_config_set_string(cfg : GitConfig*, name : Char*, value : Char*) : Int
    fun git_config_snapshot(_out : GitConfig**, config : GitConfig*) : Int

    fun git_credential_default_new(_out : GitCredential**) : Int
    fun git_credential_free(cred : GitCredential*) : Void
    fun git_credential_get_username(cred : GitCredential*) : Char*
    fun git_credential_has_username(cred : GitCredential*) : Int
    fun git_credential_ssh_custom_new(_out : GitCredential**, username : Char*, publickey : Char*, publickey_len : SizeT, sign_callback : GitCredentialSignCb, payload : Void*) : Int
    fun git_credential_ssh_interactive_new(_out : GitCredential**, username : Char*, prompt_callback : GitCredentialSshInteractiveCb, payload : Void*) : Int
    fun git_credential_ssh_key_from_agent(_out : GitCredential**, username : Char*) : Int
    fun git_credential_ssh_key_memory_new(_out : GitCredential**, username : Char*, publickey : Char*, privatekey : Char*, passphrase : Char*) : Int
    fun git_credential_ssh_key_new(_out : GitCredential**, username : Char*, publickey : Char*, privatekey : Char*, passphrase : Char*) : Int
    fun git_credential_username_new(_out : GitCredential**, username : Char*) : Int
    fun git_credential_userpass(_out : GitCredential**, url : Char*, user_from_url : Char*, allowed_types : UInt, payload : Void*) : Int
    fun git_credential_userpass_plaintext_new(_out : GitCredential**, username : Char*, password : Char*) : Int

    fun git_describe_commit(result : GitDescribeResult**, committish : GitObject*, opts : GitDescribeOptions*) : Int
    fun git_describe_format(_out : GitBuf*, result : GitDescribeResult*, opts : GitDescribeFormatOptions*) : Int
    fun git_describe_format_options_init(opts : GitDescribeFormatOptions*, version : UInt) : Int
    fun git_describe_options_init(opts : GitDescribeOptions*, version : UInt) : Int
    fun git_describe_result_free(result : GitDescribeResult*) : Void
    fun git_describe_workdir(_out : GitDescribeResult**, repo : GitRepository*, opts : GitDescribeOptions*) : Int

    fun git_diff_blob_to_buffer(old_blob : GitBlob*, old_as_path : Char*, buffer : Char*, buffer_len : SizeT, buffer_as_path : Char*, options : GitDiffOptions*, file_cb : GitDiffFileCb, binary_cb : GitDiffBinaryCb, hunk_cb : GitDiffHunkCb, line_cb : GitDiffLineCb, payload : Void*) : Int
    fun git_diff_blobs(old_blob : GitBlob*, old_as_path : Char*, new_blob : GitBlob*, new_as_path : Char*, options : GitDiffOptions*, file_cb : GitDiffFileCb, binary_cb : GitDiffBinaryCb, hunk_cb : GitDiffHunkCb, line_cb : GitDiffLineCb, payload : Void*) : Int
    fun git_diff_buffers(old_buffer : Void*, old_len : SizeT, old_as_path : Char*, new_buffer : Void*, new_len : SizeT, new_as_path : Char*, options : GitDiffOptions*, file_cb : GitDiffFileCb, binary_cb : GitDiffBinaryCb, hunk_cb : GitDiffHunkCb, line_cb : GitDiffLineCb, payload : Void*) : Int
    fun git_diff_commit_as_email(_out : GitBuf*, repo : GitRepository*, commit : GitCommit*, patch_no : SizeT, total_patches : SizeT, flags : UInt32T, diff_opts : GitDiffOptions*) : Int
    fun git_diff_find_options_init(opts : GitDiffFindOptions*, version : UInt) : Int
    fun git_diff_find_similar(diff : GitDiff*, options : GitDiffFindOptions*) : Int
    fun git_diff_find_foreach(diff : GitDiff*, file_cb : GitDiffFileCb, binary_cb : GitDiffBinaryCb, hunk_cb : GitDiffHunkCb, line_cb : GitDiffLineCb, payload : Void*) : Int
    fun git_diff_format_email(_out : GitBuf*, diff : GitDiff*, opts : GitDiffFormatEmailOptions*) : Int
    fun git_diff_format_email_options_init(opts : GitDiffFormatEmailOptions*, version : UInt) : Int
    fun git_diff_free(diff : GitDiff*) : Void
    fun git_diff_from_buffer(_out : GitDiff**, content : Char*, content_len : SizeT) : Int
    fun git_diff_get_delta(diff : GitDiff*, idx : SizeT) : GitDiffDelta*
    fun git_diff_get_stats(_out : GitDiffStats**, diff : GitDiff*) : Int
    fun git_diff_index_to_index(diff : GitDiff**, repo : GitRepository*, old_index : GitIndex*, new_index : GitIndex*, opts : GitDiffOptions*) : Int
    fun git_diff_index_to_workdir(diff : GitDiff**, repo : GitRepository*, index : GitIndex*, opts : GitDiffOptions*) : Int
    fun git_diff_is_sorted_icase(diff : GitDiff*) : Int
    fun git_diff_merge(onto : GitDiff*, from : GitDiff*) : Int
    fun git_diff_num_deltas(diff : GitDiff*) : SizeT
    fun git_diff_num_deltas_of_type(diff : GitDiff*, type : GitDeltaT) : SizeT
    fun git_diff_options_init(opts : GitDiffOptions*, version : UInt) : Int
    fun git_diff_patchid(_out : GitOid*, diff : GitDiff*, opts : GitDiffPatchidOptions*) : Int
    fun git_diff_patchid_options_init(opts : GitDiffPatchidOptions*, version : UInt) : Int
    fun git_diff_print(diff : GitDiff*, format : GitDiffFormatT, print_cb : GitDiffLineCb, payload : Void*) : Int
    fun git_diff_stats_deletions(stats : GitDiffStats*) : SizeT
    fun git_diff_stats_files_changed(stats : GitDiffStats*) : SizeT
    fun git_diff_stats_free(stats : GitDiffStats*) : Void
    fun git_diff_stats_insertions(stats : GitDiffStats*) : SizeT
    fun git_diff_stats_to_buf(_out : GitBuf*, stats : GitDiffStats*, format : GitDiffStatsFormatT, width : SizeT) : Int
    fun git_diff_status_char(status : GitDeltaT) : Char
    fun git_diff_to_buf(_out : GitBuf*, diff : GitDiff*, format : GitDiffFormatT) : Int
    fun git_diff_tree_to_index(diff : GitDiff**, repo : GitRepository*, old_tree : GitTree*, index : GitIndex*, opts : GitDiffOptions*) : Int
    fun git_diff_tree_to_tree(diff : GitDiff**, repo : GitRepository*, old_tree : GitTree*, new_tree : GitTree*, opts : GitDiffOptions*) : Int
    fun git_diff_tree_to_workdir(diff : GitDiff**, repo : GitRepository*, old_tree : GitTree*, opts : GitDiffOptions*) : Int
    fun git_diff_tree_to_workdir_with_index(diff : GitDiff**, repo : GitRepository*, old_tree : GitTree*, opts : GitDiffOptions*) : Int

    fun git_error_clear : Void
    fun git_error_last : GitError*
    fun git_error_set_oom : Void
    fun git_error_set_str(error_class : Int, string : Char*) : Int

    fun git_fetch_options_init(opts : GitFetchOptions*, version : UInt) : Int

    fun git_filter_list_apply_to_blob(_out : GitBuf*, filters : GitFilterList*, blob : GitBlob*) : Int
    fun git_filter_list_apply_to_data(_out : GitBuf*, filters : GitFilterList*, in : GitBuf*) : Int
    fun git_filter_list_apply_to_file(_out : GitBuf*, filters : GitFilterList*, repo : GitRepository*, path : Char*) : Int
    fun git_filter_list_contains(filters : GitFilterList*, name : Char*) : Int
    fun git_filter_list_free(filters : GitFilterList*) : Void
    fun git_filter_list_load(filters : GitFilterList**, repo : GitRepository*, blob : GitBlob*, path : Char*, mode : GitFilterModeT, flags : UInt32T) : Int
    fun git_filter_list_stream_blob(filters : GitFilterList**, blob : GitBlob*, target : GitWritestream*) : Int
    fun git_filter_list_stream_data(filters : GitFilterList**, data : GitBuf*, target : GitWritestream*) : Int
    fun git_filter_list_stream_file(filters : GitFilterList**, repo : GitRepository*, path : Char*, target : GitWritestream*) : Int

    fun giterr_clear : Void
    fun giterr_last : GitError*
    fun giterr_set_oom : Void
    fun giterr_set_str(error_class : Int, string : Char*) : Void

    fun git_graph_ahead_behind(ahead : SizeT, behind : SizeT, repo : GitRepository*, local : GitOid*, upstream : GitOid*) : Int
    fun git_graph_descendant_of(repo : GitRepository*, commit : GitOid*, ancestor : GitOid*) : Int

    fun git_ignore_add_rule(repo : GitRepository*, rules : Char*) : Int
    fun git_ignore_clear_internal_rules(repo : GitRepository*) : Int
    fun git_ignore_path_is_ignored(ignored : Int*, repo : GitRepository*, path : Char*) : Int

    fun git_index_add(index : GitIndex*, source_entry : GitIndexEntry*) : Int
    fun git_index_add_all(index : GitIndex*, pathspec : GitStrarray*, flags : UInt, callback : GitIndexMatchedPathCb, payload : Void*) : Int
    fun git_index_add_bypath(index : GitIndex*, path : Char*) : Int
    fun git_index_add_from_buffer(index : GitIndex*, entry : GitIndexEntry*, buffer : Void*, len : SizeT) : Int
    fun git_index_caps(index : GitIndex*) : Int
    fun git_index_checksum(index : GitIndex*) : GitOid*
    fun git_index_clear(index : GitIndex*) : Int
    fun git_index_conflict_add(index : GitIndex*, ancestor_entry : GitIndexEntry*, our_entry : GitIndexEntry*, their_entry : GitIndexEntry*) : Int
    fun git_index_conflict_cleanup(index : GitIndex*) : Int
    fun git_index_conflict_get(ancestor_out : GitIndexEntry**, our_out : GitIndexEntry**, their_out : GitIndexEntry**, index : GitIndex*, path : Char*) : Int
    fun git_index_conflict_iterator_free(iterator : GitIndexConflictIterator*) : Void
    fun git_index_conflict_iterator_new(iterator_out : GitIndexConflictIterator**, index : GitIndex*) : Int
    fun git_index_conflict_next(ancestor_out : GitIndexEntry**, our_out : GitIndexEntry**, their_out : GitIndexEntry**, iterator : GitIndexConflictIterator*) : Int
    fun git_index_conflict_remove(index : GitIndex*, path : Char*) : Int
    fun git_index_entry_is_conflict(entry : GitIndexEntry*) : Int
    fun git_index_entry_stage(entry : GitIndexEntry*) : Int
    fun git_index_entrycount(index : GitIndex*) : SizeT
    fun git_index_find(at_pos : SizeT, index : GitIndex*, path : Char*) : Int
    fun git_index_find_prefix(at_pos : SizeT, index : GitIndex*, prefix : Char*) : Int
    fun git_index_free(index : GitIndex*) : Void
    fun git_index_get_byindex(index : GitIndex*, n : SizeT) : GitIndexEntry*
    fun git_index_get_bypath(index : GitIndex*, path : Char*, stage : Int) : GitIndexEntry*
    fun git_index_has_conflicts(index : GitIndex*) : Int
    fun git_index_iterator_free(iterator : GitIndexIterator*) : Void
    fun git_index_iterator_new(iterator_out : GitIndexIterator**, index : GitIndex*) : Int
    fun git_index_iterator_next(_out : GitIndexEntry**, iterator : GitIndexIterator*) : Int
    fun git_index_new(_out : GitIndex**) : Int
    fun git_index_open(_out : GitIndex**, index_path : Char*) : Int
    fun git_index_owner(index : GitIndex*) : GitRepository*
    fun git_index_path(index : GitIndex*) : Char*
    fun git_index_read(index : GitIndex*, force : Int) : Int
    fun git_index_read_tree(index : GitIndex*, tree : GitTree*) : Int
    fun git_index_remove(index : GitIndex*, path : Char*, stage : Int) : Int
    fun git_index_remove_all(index : GitIndex*, pathspec : GitStrarray*, callback : GitIndexMatchedPathCb, payload : Void*) : Int
    fun git_index_remove_bypath(index : GitIndex*, path : Char*) : Int
    fun git_index_remove_directory(index : GitIndex*, dir : Char*, stage : Int) : Int
    fun git_index_set_caps(index : GitIndex*, caps : Int) : Int
    fun git_index_set_version(index : GitIndex*, version : UInt) : Int
    fun git_index_update_all(index : GitIndex*, pathspec : GitStrarray*, callback : GitIndexMatchedPathCb, payload : Void*) : Int
    fun git_index_version(index : GitIndex*) : UInt
    fun git_index_write(index : GitIndex*) : Int
    fun git_index_write_tree(_out : GitOid*, index : GitIndex*) : Int
    fun git_index_write_tree_to(_out : GitOid*, index : GitIndex*, repo : GitRepository*) : Int

    fun git_indexer_append(idx : GitIndexer*, data : Void*, size : SizeT, stats : GitIndexerProgress*) : Int
    fun git_indexer_commit(idx : GitIndexer*, stats : GitIndexerProgress*) : Int
    fun git_indexer_free(idx : GitIndexer*) : Void
    fun git_indexer_hash(idx : GitIndexer*) : GitOid*
    fun git_indexer_new(_out : GitIndexer**, path : Char*, mode : UInt, odb : GitOdb*, opts : GitIndexerOptions*) : Int
    fun git_indexer_options_init(opts : GitIndexerOptions*, version : UInt) : Int

    fun git_libgit2_features : Int
    fun git_libgit2_init : Int
    fun git_libgit2_opts(option : Int) : Int
    fun git_libgit2_shutdown : Int
    fun git_libgit2_version(major : Int*, minor : Int*, rev : Int*) : Int

    fun git_mailmap_add_entry(mm : GitMailmap*, real_name : Char*, real_email : Char*, replace_name : Char*, replace_email : Char*) : Int
    fun git_mailmap_free(mm : GitMailmap*) : Void
    fun git_mailmap_from_buffer(_out : GitMailmap*, buf : Char*, len : SizeT) : Int
    fun git_mailmap_from_repository(_out : GitMailmap*, repo : GitRepository*) : Int
    fun git_mailmap_new(_out : GitMailmap**) : Int
    fun git_mailmap_resolve(real_name : Char**, real_email : Char**, mm : GitMailmap*, name : Char*, email : Char*) : Int
    fun git_mailmap_resolve_signature(_out : GitSignature**, mm : GitMailmap*, sig : GitSignature*) : Int

    fun git_merge(repo : GitRepository*, their_heads : GitAnnotatedCommit**, their_heads_len : SizeT, merge_opts : GitMergeOptions*, checkout_opts : GitCheckoutOptions*) : Int
    fun git_merge_analysis(analysis_out : GitMergeAnalysisT*, preference_out : GitMergePreferenceT*, repo : GitRepository*, their_heads : GitAnnotatedCommit**, their_heads_len : SizeT) : Int
    fun git_merge_analysis_for_ref(analysis_out : GitMergeAnalysisT*, preference_out : GitMergePreferenceT*, repo : GitRepository*, our_ref : GitReference*, their_heads : GitAnnotatedCommit**, their_heads_len : SizeT) : Int
    fun git_merge_base(_out : GitOid*, repo : GitRepository*, one : GitOid*, two : GitOid*) : Int
    fun git_merge_base_many(_out : GitOid*, repo : GitRepository*, length : SizeT, input_array : GitOid**) : Int
    fun git_merge_base_octopus(_out : GitOid*, repo : GitRepository*, length : SizeT, input_array : GitOid**) : Int
    fun git_merge_bases(_out : GitOidarray*, repo : GitRepository*, one : GitOid*, two : GitOid*) : Int
    fun git_merge_bases_many(_out : GitOidarray*, repo : GitRepository*, length : SizeT, input_array : GitOid**) : Int
    fun git_merge_commits(_out : GitIndex**, repo : GitRepository*, our_commit : GitCommit*, their_commit : GitCommit*, opts : GitMergeOptions*) : Int
    fun git_merge_file(_out : GitMergeFileResult*, ancestor : GitMergeFileInput*, ours : GitMergeFileInput*, theirs : GitMergeFileInput*, opts : GitMergeFileOptions*) : Int
    fun git_merge_file_from_index(_out : GitMergeFileResult*, repo : GitRepository*, ancestor : GitIndexEntry*, ours : GitIndexEntry*, theirs : GitIndexEntry*, opts : GitMergeFileOptions*) : Int
    fun git_merge_file_input_init(opts : GitMergeFileInput*, version : UInt) : Int
    fun git_merge_file_options_init(opts : GitMergeFileOptions*, version : UInt) : Int
    fun git_merge_file_result_free(result : GitMergeFileResult*) : Void
    fun git_merge_options_init(opts : GitMergeOptions*, version : UInt) : Int
    fun git_merge_trees(_out : GitIndex**, repo : GitRepository*, ancestor_tree : GitTree*, our_tree : GitTree*, their_tree : GitTree*, opts : GitMergeOptions*) : Int

    fun git_message_prettify(_out : GitBuf*, message : Char*, strip_comments : Int, comment_char : Char) : Int
    fun git_message_trailer_array_free(arr : GitMessageTrailerArray*) : Void
    fun git_message_trailers(arr : GitMessageTrailerArray*, message : Char*) : Int

    fun git_note_author(note : GitNote*) : GitSignature*
    fun git_note_commit_create(notes_commit_out : GitOid*, notes_blob_out : GitOid*, repo : GitRepository*, parent : GitCommit*, author : GitSignature*, committer : GitSignature*, oid : GitOid*, note : Char*, allow_note_overwrite : Int) : Int
    fun git_note_commit_iterator_new(_out : GitNoteIterator**, notes_commit : GitCommit*) : Int
    fun git_note_commit_read(_out : GitNote**, repo : GitRepository*, notes_commit : GitCommit*, oid : GitOid*) : Int
    fun git_note_commit_remove(notes_commit_out : GitOid*, repo : GitRepository*, notes_commit : GitCommit*, author : GitSignature*, committer : GitSignature*, oid : GitOid*) : Int
    fun git_note_committer(note : GitNote*) : GitSignature*
    fun git_note_create(_out : GitOid*, repo : GitRepository*, notes_ref : Char*, author : GitSignature*, committer : GitSignature*, oid : GitOid*, note : Char*, force : Int) : Int
    fun git_note_default_ref(_out : GitBuf*, repo : GitRepository*) : Int
    fun git_note_foreach(repo : GitRepository*, notes_ref : Char*, note_cb : GitNoteForeachCb, payload : Void*) : Int
    fun git_note_free(note : GitNote*) : Void
    fun git_note_id(note : GitNote*) : GitOid*
    fun git_note_iterator_free(it : GitNoteIterator*) : Void
    fun git_note_iterator_new(_out : GitNoteIterator**, repo : GitRepository*, notes_ref : Char*) : Int
    fun git_note_message(note : GitNote*) : Char*
    fun git_note_next(note_id : GitOid*, annotated_id : GitOid*, it : GitNoteIterator*) : Int
    fun git_note_read(_out : GitNote**, repo : GitRepository*, notes_ref : Char*, oid : GitOid*) : Int
    fun git_note_remove(repo : GitRepository*, notes_ref : Char*, author : GitSignature*, committer : GitSignature*, oid : GitOid*) : Int

    fun git_object__size(type : GitObjectT) : SizeT
    fun git_object_dup(dest : GitObject**, source : GitObject*) : Int
    fun git_object_free(object : GitObject*) : Void
    fun git_object_id(obj : GitObject*) : GitOid*
    fun git_object_lookup(object : GitObject**, repo : GitRepository*, id : GitOid*, type : GitObjectT) : Int
    fun git_object_lookup_bypath(_out : GitObject**, treeish : GitObject*, path : Char*, type : GitObjectT) : Int
    fun git_object_lookup_prefix(object_out : GitObject**, repo : GitRepository*, id : GitOid*, len : SizeT, type : GitObjectT) : Int
    fun git_object_owner(obj : GitObject*) : GitRepository*
    fun git_object_peel(peeled : GitObject**, object : GitObject*, target_type : GitObjectT) : Int
    fun git_object_short_id(_out : GitBuf*, obj : GitObject*) : Int
    fun git_object_string2type(str : Char*) : GitObjectT
    fun git_object_type(obj : GitObject*) : GitObjectT
    fun git_object_type2string(type : GitObjectT) : Char*
    fun git_object_typeisloose(type : GitObjectT) : Int

    fun git_odb_add_alternate(odb : GitOdb*, backend : GitOdbBackend*, priority : Int) : Int
    fun git_odb_add_backend(odb : GitOdb*, backend : GitOdbBackend*, priority : Int) : Int
    fun git_odb_add_disk_alternate(odb : GitOdb*, path : Char*) : Int
    fun git_odb_backend_loose(_out : GitOdbBackend**, objects_dir : Char*, compression_level : Int, do_fsync : Int, dir_mode : UInt, file_mode : UInt) : Int
    fun git_odb_backend_one_pack(_out : GitOdbBackend**, index_file : Char*) : Int
    fun git_odb_backend_pack(_out : GitOdbBackend**, objects_dir : Char*) : Int
    fun git_odb_exists(db : GitOdb*, id : GitOid*) : Int
    fun git_odb_exists_prefix(_out : GitOid*, db : GitOdb*, short_id : GitOid*, len : SizeT) : Int
    fun git_odb_expand_ids(db : GitOdb*, ids : GitOdbExpandId*, count : SizeT) : Int
    fun git_odb_foreach(db : GitOdb*, cb : GitOdbForeachCb, payload : Void*) : Int
    fun git_odb_free(db : GitOdb*) : Void
    fun git_odb_get_backend(_out : GitOdbBackend**, odb : GitOdb*, pos : SizeT) : Int
    fun git_odb_hash(_out : GitOid*, data : Void*, len : SizeT, type : GitObjectT) : Int
    fun git_odb_hashfile(_out : GitOid*, path : Char*, type : GitObjectT) : Int
    fun git_odb_new(_out : GitOdb**) : Int
    fun git_odb_num_backends(odb : GitOdb*) : SizeT
    fun git_odb_object_data(object : GitOdbObject*) : Void*
    fun git_odb_object_dup(dest : GitOdbObject**, source : GitOdbObject*) : Int
    fun git_odb_object_free(object : GitOdbObject*) : Void
    fun git_odb_object_id(object : GitOdbObject*) : GitOid*
    fun git_odb_object_size(object : GitOdbObject*) : SizeT
    fun git_odb_object_type(object : GitOdbObject*) : GitObjectT
    fun git_odb_open(_out : GitOdb**, objects_dir : Char*) : Int
    fun git_odb_open_rstream(_out : GitOdbStream**, len : SizeT*, type : GitObjectT*, db : GitOdb*, oid : GitOid*) : Int
    fun git_odb_open_wstream(_out : GitOdbStream**, db : GitOdb*, size : GitObjectSizeT, type : GitObjectT) : Int
    fun git_odb_read(_out : GitOdbObject**, db : GitOdb*, id : GitOid*) : Int
    fun git_odb_read_header(len_out : SizeT*, type_out : GitObjectT*, db : GitOdb*, id : GitOid*) : Int
    fun git_odb_read_prefix(_out : GitOdbObject**, db : GitOdb*, short_id : GitOid*, len : SizeT) : Int
    fun git_odb_refresh(db : GitOdb*) : Int
    fun git_odb_stream_finalize_write(_out : GitOid*, stream : GitOdbStream*) : Int
    fun git_odb_stream_free(stream : GitOdbStream*) : Void
    fun git_odb_stream_read(stream : GitOdbStream*, buffer : Char*, len : SizeT) : Int
    fun git_odb_stream_write(stream : GitOdbStream*, buffer : Char*, len : SizeT) : Int
    fun git_odb_write(_out : GitOid*, odb : GitOdb*, data : Void*, len : SizeT, type : GitObjectT) : Int
    fun git_odb_write_pack(_out : GitOdbWritepack**, db : GitOdb*, progress_cb : GitIndexerProgressCb, progress_payload : Void*) : Int

    fun git_oid_cmp(a : GitOid*, b : GitOid*) : Int
    fun git_oid_cpy(_out : GitOid*, src : GitOid*) : Int
    fun git_oid_equal(a : GitOid*, b : GitOid*) : Int
    fun git_oid_fmt(_out : Char*, id : GitOid*) : Int
    fun git_oid_fromraw(_out : GitOid*, raw : Char*) : Int
    fun git_oid_fromstr(_out : GitOid*, str : Char*) : Int
    fun git_oid_fromstrn(_out : GitOid*, str : Char*, length : SizeT) : Int
    fun git_oid_fromstrp(_out : GitOid*, str : Char*) : Int
    fun git_oid_is_zero(id : GitOid*) : Int
    fun git_oid_iszero(id : GitOid*) : Int
    fun git_oid_ncmp(a : GitOid*, b : GitOid*, len : SizeT) : Int
    fun git_oid_nfmt(_out : Char*, n : SizeT, id : GitOid*) : Int
    fun git_oid_pathfmt(_out : Char*, id : GitOid*) : Int
    fun git_oid_shorten_add(os : GitOidShorten*, text_id : Char*) : Int
    fun git_oid_shorten_free(os : GitOidShorten*) : Void
    fun git_oid_shorten_new(min_length : SizeT) : GitOidShorten*
    fun git_oid_strcmp(id : GitOid*, str : Char*) : Int
    fun git_oid_streq(id : GitOid*, str : Char*) : Int
    fun git_oid_tostr(_out : Char*, n : SizeT, id : GitOid*) : Char*
    fun git_oid_tostr_s(oid : GitOid*) : Char*

    fun git_oidarray_free(array : GitOidarray*) : Void
  end
end
