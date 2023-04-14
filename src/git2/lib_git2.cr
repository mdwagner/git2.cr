module Git2
  @[Link("git2")]
  lib LibGit2
    alias Int = LibC::Int
    alias UInt = LibC::UInt
    alias UInt16T = LibC::UInt16T
    alias UInt32T = LibC::UInt32T
    alias UInt64T = LibC::UInt64T
    alias Int64T = LibC::Int64T

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
    alias GitObjectSizeT = UInt64T
    alias GitOffT = Int64T
    alias GitTimeT = Int64T

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
      id : LibC::Char[20]
    end

    struct GitDiffFile
      id : GitOid
      path : LibC::Char*
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
      header_len : LibC::SizeT
      header : LibC::Char[128]
    end

    struct GitCert
      cert_type : GitCertT
    end

    struct GitCheckoutPerfdata
      mkdir_calls, stat_calls, chmod_calls : LibC::SizeT
    end

    struct GitBuf
      ptr : LibC::Char*
      asize, size : LibC::SizeT
    end

    struct GitConfigEntry
      name, value : LibC::Char*
      include_depth : UInt
      level : GitConfigLevelT
      free : GitConfigEntry* -> Void
      payload : Void*
    end

    struct GitRemoteHead
      local : Int
      oid, loid : GitOid
      name, symref_target : LibC::Char*
    end

    struct GitDiffBinaryFile
      type : GitDiffBinaryT
      data : LibC::Char*
      datalen, inflatedlen : LibC::SizeT
    end

    struct GitDiffBinary
      contains_data : UInt
      old_file, new_file : GitDiffBinaryFile
    end

    struct GitDiffLine
      origin : LibC::Char
      old_lineno, new_lineno, num_lines : Int
      content_line : LibC::SizeT
      content_offset : GitOffT
      content : LibC::Char*
    end

    struct GitIndexerProgress
      total_objects, indexed_objects, received_objects, local_objects, total_deltas, indexed_deltas : UInt
      received_bytes : LibC::SizeT
    end

    struct GitPushUpdate
      src_refname, dst_refname : LibC::Char*
      src, dst : GitOid
    end

    alias GitApplyDeltaCb = GitDiffDelta*, Void* -> Int
    alias GitApplyHunkCb = GitDiffHunk*, Void* -> Int
    alias GitAttrForeachCb = LibC::Char*, LibC::Char*, Void* -> Int
    alias GitTransportCertificateCheckCb = GitCert*, Int, LibC::Char*, Void* -> Int
    alias GitCheckoutNotifyCb = GitCheckoutNotifyT, LibC::Char*, GitDiffFile*, GitDiffFile*, GitDiffFile*, Void* -> Int
    alias GitCheckoutProgressCb = LibC::Char*, LibC::SizeT, LibC::SizeT, Void* -> Void
    alias GitCheckoutPerfdataCb = GitCheckoutPerfdata*, Void* -> Void
    alias GitRemoteCreateCb = GitRemote**, GitRepository*, LibC::Char*, LibC::Char*, Void* -> Int
    alias GitRepositoryCreateCb = GitRepository**, LibC::Char*, Int, Void* -> Int
    alias GitCommitSigningCb = GitBuf*, GitBuf*, LibC::Char*, Void* -> Int
    alias GitConfigForeachCb = GitConfigEntry*, Void* -> Int
    alias GitCredentialAcquireCb = GitCredential**, LibC::Char*, LibC::Char*, UInt, Void* -> Int
    alias GitHeadlistCb = GitRemoteHead*, Void* -> Int
    alias GitDiffNotifyCb = GitDiff*, GitDiffDelta*, LibC::Char*, Void* -> Int
    alias GitDiffProgressCb = GitDiff*, LibC::Char*, LibC::Char*, Void* -> Int
    alias GitDiffFileCb = GitDiffDelta*, LibC::Float, Void* -> Int
    alias GitDiffBinaryCb = GitDiffDelta*, GitDiffBinary*, Void* -> Int
    alias GitDiffHunkCb = GitDiffDelta*, GitDiffHunk*, Void* -> Int
    alias GitDiffLineCb = GitDiffDelta*, GitDiffHunk*, GitDiffLine*, Void* -> Int
    alias GitIndexMatchedPathCb = LibC::Char*, LibC::Char*, Void* -> Int
    alias GitIndexerProgressCb = GitIndexerProgress*, Void* -> Int
    alias GitNoteForeachCb = GitOid*, GitOid*, Void* -> Int
    alias GitOdbForeachCb = GitOid*, Void* -> Int
    alias GitPackbuilderForeachCb = Void*, LibC::SizeT, Void* -> Int
    alias GitPackbuilderProgress = Int, UInt32T, UInt32T, Void* -> Int
    alias GitReferenceForeachCb = GitReference*, Void* -> Int
    alias GitReferenceForeachNameCb = LibC::Char*, Void* -> Int
    alias GitPushTransferProgressCb = UInt, UInt, LibC::SizeT, Void* -> Int
    alias GitPushNegotiation = GitPushUpdate**, LibC::SizeT, Void* -> Int
    alias GitPushUpdateReferenceCb = LibC::Char*, LibC::Char*, Void* -> Int
    alias GitUrlResolveCb = GitBuf*, LibC::Char*, Int, Void* -> Int
    alias GitRepositoryFetchheadForeachCb = LibC::Char*, LibC::Char*, GitOid*, UInt, Void* -> Int
    alias GitRepositoryMergeheadForeachCb = GitOid*, Void* -> Int
    alias GitRevwalkHideCb = GitOid*, Void* -> Int
    alias GitStashApplyProgressCb = GitStashApplyProgressT, Void* -> Int
    alias GitStashCb = LibC::SizeT, LibC::Char*, GitOid*, Void* -> Int
    alias GitStatusCb = LibC::Char*, UInt, Void* -> Int
    alias GitSubmoduleCb = GitSubmodule*, LibC::Char*, Void* -> Int
    alias GitTagForeachCb = LibC::Char*, GitOid*, Void* -> Int
    alias GitTraceCb = GitTraceLevelT, LibC::Char* -> Void
    alias GitTransportMessageCb = LibC::Char*, Int, Void* -> Int
    alias GitTransportCb = GitTransport**, GitRemote*, Void* -> Int
    alias GitTreebuilderFilterCb = GitTreeEntry*, Void* -> Int
    alias GitTreewalkCb = LibC::Char*, GitTreeEntry*, Void* -> Int

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
      sign : LibC::Char
    end

    struct GitSignature
      name, email : LibC::Char*
      when_t : GitTime
    end

    struct GitBlameHunk
      lines_in_hunk : LibC::SizeT
      final_commit_id : GitOid
      final_start_line_number : LibC::SizeT
      final_signature : GitSignature*
      orig_commit_id : GitOid
      orig_path : LibC::Char*
      orig_start_line_number : LibC::SizeT
      git_signature : GitSignature*
      boundary : LibC::Char
    end

    struct GitBlameOptions
      version : UInt
      flags : UInt32T
      min_match_characters : UInt16T
      newest_commit, oldest_commit : GitOid
      min_line, max_line : LibC::SizeT
    end

    struct GitBlobFilterOptions
      version : Int
      flags : UInt32T
    end

    struct GitCertHostkey
      parent : GitCert
      type : GitCertSshT
      hash_md5 : LibC::Char[16]
      hash_sha1 : LibC::Char[20]
      hash_sha256 : LibC::Char[32]
    end

    struct GitCertX509
      parent : GitCert
      data : Void*
      len : LibC::SizeT
    end

    fun git_libgit2_features : Int
    fun git_libgit2_init : Int
    fun git_libgit2_opts(option : Int) : Int
    fun git_libgit2_shutdown : Int
    fun git_libgit2_version(major : Int*, minor : Int*, rev : Int*) : Int
  end
end
