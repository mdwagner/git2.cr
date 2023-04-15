module Git2
  @[Link("git2")]
  lib LibGit2
    alias Int = LibC::Int
    alias UInt = LibC::UInt
    alias UInt16T = LibC::UInt16T
    alias UInt32T = LibC::UInt32T
    alias UInt64T = LibC::UInt64T
    alias Int32T = LibC::Int32T
    alias Int64T = LibC::Int64T
    alias UShort = LibC::UShort

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

    struct GitStrarray
      strings : LibC::Char**
      count : LibC::SizeT
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
      target_directory, ancestor_label, our_label, their_label : LibC::Char*
      perfdata_cb : GitCheckoutPerfdataCb
      perfdata_payload : Void*
    end

    struct GitDiffSimilarityMetric
      file_signature : Void**, GitDiffFile*, LibC::Char*, Void* -> Int
      buffer_signature : Void**, GitDiffFile*, LibC::Char*, LibC::SizeT, Void* -> Int
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
      default_driver : LibC::Char*
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
      update_tips : LibC::Char*, GitOid*, GitOid*, Void* -> Int
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
      url : LibC::Char*
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
      checkout_branch : LibC::Char*
      repository_cb : GitRepositoryCreateCb
      repository_cb_payload : Void*
      remote_cb : GitRemoteCreateCb
      remote_cb_payload : Void*
    end

    struct GitConfigmap
      type : GitConfigmapT
      str_match : LibC::Char*
      map_value : Int
    end

    struct GitCredentialUserpassPayload
      username, password : LibC::Char*
    end

    struct GitDescribeFormatOptions
      version, abbreviated_size : UInt
      always_use_long_format : Int
      dirty_suffix : LibC::Char*
    end

    struct GitDiffFindOptions
      version : UInt
      flags : UInt32T
      rename_threshold : UInt16T
      rename_from_rewrite_threshold, copy_threshold, break_rewrite_threshold : UInt16T
      rename_limit : LibC::SizeT
      metric : GitDiffSimilarityMetric*
    end

    struct GitDiffFormatEmailOptions
      version : UInt
      flags : UInt32T
      patch_no, total_patches : LibC::SizeT
      id : GitOid*
      summary, body : LibC::Char*
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
      old_prefix, new_prefix : LibC::Char*
    end

    struct GitDiffPatchidOptions
      version : UInt
    end

    struct GitError
      message : LibC::Char*
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
      path : LibC::Char*
    end

    struct GitIndexerOptions
      version : UInt
      progress_cb : GitIndexerProgressCb
      progress_cb_payload : Void*
      verify : LibC::Char
    end

    struct GitMergeFileInput
      version : UInt
      ptr : LibC::Char*
      size : LibC::SizeT
      path : LibC::Char*
      mode : UInt
    end

    struct GitMergeFileOptions
      version : UInt
      ancestor_label, our_label, their_label : LibC::Char*
      favor : GitMergeFileFavorT
      flags : UInt32T
      marker_size : UShort
    end

    struct GitMergeFileResult
      automergeable : UInt
      path : LibC::Char*
      mode : UInt
      ptr : LibC::Char*
      len : LibC::SizeT
    end

    struct GitMessageTrailer
      key, value : LibC::Char*
    end

    struct GitMessageTrailerArray
      trailers : GitMessageTrailer*
      count : LibC::SizeT
      trailer_block : LibC::Char*
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
      read : GitOdbStream*, LibC::Char*, LibC::SizeT -> Int
      write : GitOdbStream*, LibC::Char*, LibC::SizeT -> Int
      finalized_write : GitOdbStream*, GitOid* -> Int
      free : GitOdbStream* -> Void
    end

    struct GitOdbWritepack
      backend : GitOdbBackend*
      append : GitOdbWritepack*, Void*, LibC::SizeT, GitIndexerProgress* -> Int
      commit : GitOdbWritepack*, GitIndexerProgress* -> Int
      free : GitOdbWritepack* -> Void
    end

    struct GitOidarray
      ids : GitOid*
      count : LibC::SizeT
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
      exec : LibC::Char*
    end

    struct GitRebaseOptions
      version : UInt
      quiet, inmemory : Int
      rewrite_notes_ref : LibC::Char*
      merge_options : GitMergeOptions
      checkout_options : GitCheckoutOptions
      signing_cb : GitCommitSigningCb
      payload : Void*
    end

    struct GitRemoteCreateOptions
      version : UInt
      repository : GitRepository*
      name, fetchspec : LibC::Char*
      flags : UInt
    end

    struct GitRepositoryInitOptions
      version : UInt
      flags, mode : UInt32T
      workdir_path, description, template_path, initial_head, origin_url : LibC::Char*
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
      path : LibC::Char*
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
      write : GitWritestream*, LibC::Char*, LibC::SizeT -> Int
      close : GitWritestream* -> Int
      free : GitWritestream* -> Void
    end

    fun git_annotated_commit_free(commit : GitAnnotatedCommit*) : Void
    fun git_annotated_commit_from_fetchhead(out_ptr : GitAnnotatedCommit**, repo : GitRepository*, branch_name : LibC::Char*, remote_url : LibC::Char*, id : GitOid*) : Int
    fun git_annotated_commit_from_ref(out_ptr : GitAnnotatedCommit**, repo : GitRepository*, ref : GitReference*) : Int
    fun git_annotated_commit_from_revspec(out_ptr : GitAnnotatedCommit**, repo : GitRepository*, revspec : LibC::Char*) : Int
    fun git_annotated_commit_id(commit : GitAnnotatedCommit*) : GitOid*
    fun git_annotated_commit_lookup(out_ptr : GitAnnotatedCommit**, repo : GitRepository*, id : GitOid*) : Int
    fun git_annotated_commit_ref(commit : GitAnnotatedCommit*) : LibC::Char*

    fun git_apply(repo : GitRepository*, diff : GitDiff*, location : GitApplyLocationT, options : GitApplyOptions*) : Int
    fun git_apply_to_tree(out_ptr : GitIndex**, repo : GitRepository*, preimage : GitTree*, diff : GitDiff*, options : GitApplyOptions*) : Int

    fun git_attr_add_macro(repo : GitRepository*, name : LibC::Char*, values : LibC::Char*) : Int
    fun git_attr_cache_flush(repo : GitRepository*) : Int
    fun git_attr_foreach(repo : GitRepository*, flags : UInt32T, path : LibC::Char*, callback : GitAttrForeachCb, payload : Void*) : Int
    fun git_attr_get(value_out : LibC::Char**, repo : GitRepository*, flags : UInt32T, path : LibC::Char*, name : LibC::Char*) : Int
    fun git_attr_get_many(values_out : LibC::Char**, repo : GitRepository*, flags : UInt32T, path : LibC::Char*, num_attr : LibC::SizeT, names : LibC::Char**) : Int
    fun git_attr_value(attr : LibC::Char*) : GitAttrValueT

    fun git_blame_buffer(out_ptr : GitBlame**, reference : GitBlame*, buffer : LibC::Char*, buffer_len : LibC::SizeT) : Int
    fun git_blame_file(out_ptr : GitBlame**, repo : GitRepository*, path : LibC::Char*, options : GitBlameOptions*) : Int
    fun git_blame_free(blame : GitBlame*) : Void
    fun git_blame_get_hunk_byindex(blame : GitBlame*, index : UInt32T) : GitBlameHunk*
    fun git_blame_get_hunk_byline(blame : GitBlame*, lineno : LibC::SizeT) : GitBlameHunk*
    fun git_blame_get_hunk_count(blame : GitBlame*) : UInt32T
    fun git_blame_init_options(opts : GitBlameOptions*, version : UInt) : Int
    fun git_blame_options_init(opts : GitBlameOptions*, version : UInt) : Int

    fun git_blob_create_from_buffer(id : GitOid*, repo : GitRepository*, buffer : Void*, len : LibC::SizeT) : Int
    fun git_blob_create_from_disk(id : GitOid*, repo : GitRepository*, path : LibC::Char*) : Int
    fun git_blob_create_from_stream(out_ptr : GitWritestream**, repo : GitRepository*, hintpath : LibC::Char*) : Int
    fun git_blob_create_from_stream_commit(out_ptr : GitOid*, stream : GitWritestream*) : Int
    fun git_blob_create_from_workdir(id : GitOid*, repo : GitRepository*, relative_path : LibC::Char*) : Int
    fun git_blob_create_fromworkdir(id : GitOid*, repo : GitRepository*, relative_path : LibC::Char*) : Int
    fun git_blob_dup(out_ptr : GitBlob**, source : GitBlob*) : Int
    fun git_blob_filter(out_ptr : GitBuf*, blob : GitBlob*, as_path : LibC::Char*, opts : GitBlobFilterOptions*) : Int
    fun git_blob_filtered_content(out_ptr : GitBuf*, blob : GitBlob*, as_path : LibC::Char*, check_for_binary_data : Int) : Int
    fun git_blob_free(blob : GitBlob*) : Void
    fun git_blob_id(blob : GitBlob*) : GitOid*
    fun git_blob_is_binary(blob : GitBlob*) : Int
    fun git_blob_lookup(blob : GitBlob**, repo : GitRepository*, id : GitOid*) : Int
    fun git_blob_lookup_prefix(blob : GitBlob**, repo : GitRepository*, id : GitOid*, len : LibC::SizeT) : Int
    fun git_blob_owner(blob : GitBlob*) : GitRepository*
    fun git_blob_rawcontent(blob : GitBlob*) : Void*
    fun git_blob_rawsize(blob : GitBlob*) : GitObjectSizeT

    fun git_branch_create(out_ptr : GitReference**, repo : GitRepository*, branch_name : LibC::Char*, target : GitCommit*, force : Int) : Int
    fun git_branch_create_from_annotated(ref_out : GitReference**, repo : GitRepository*, branch_name : LibC::Char*, commit : GitAnnotatedCommit*, force : Int) : Int
    fun git_branch_delete(branch : GitReference*) : Int
    fun git_branch_is_checked_out(branch : GitReference*) : Int
    fun git_branch_is_head(branch : GitReference*) : Int
    fun git_branch_iterator_free(iter : GitBranchIterator*) : Void
    fun git_branch_iterator_new(out_ptr : GitBranchIterator**, repo : GitRepository*, list_flags : GitBranchT) : Int
    fun git_branch_lookup(out_ptr : GitReference**, repo : GitRepository*, branch_name : LibC::Char*, branch_type : GitBranchT) : Int
    fun git_branch_move(out_ptr : GitReference**, branch : GitReference*, new_branch_name : LibC::Char*, force : Int) : Int
    fun git_branch_name(out_ptr : LibC::Char**, ref : GitReference*) : Int
    fun git_branch_next(out_ptr : GitReference**, out_type : GitBranchT*, iter : GitBranchIterator*) : Int
    fun git_branch_remote_name(out_ptr : GitBuf*, repo : GitRepository*, refname : LibC::Char*) : Int
    fun git_branch_set_upstream(branch : GitReference*, branch_name : LibC::Char*) : Int
    fun git_branch_upstream(out_ptr : GitReference**, branch : GitReference*) : Int
    fun git_branch_upstream_name(out_ptr : GitBuf*, repo : GitRepository*, refname : LibC::Char*) : Int
    fun git_branch_upstream_remote(buf : GitBuf*, repo : GitRepository*, refname : LibC::Char*) : Int

    fun git_buf_contains_nul(buf : GitBuf*) : Int
    fun git_buf_dispose(buffer : GitBuf*) : Void
    fun git_buf_free(buffer : GitBuf*) : Void
    fun git_buf_grow(buffer : GitBuf*, target_size : LibC::SizeT) : Int
    fun git_buf_is_binary(buf : GitBuf*) : Int
    fun git_buf_set(buffer : GitBuf*, data : Void*, datalen : LibC::SizeT) : Int

    fun git_checkout_head(repo : GitRepository*, opts : GitCheckoutOptions*) : Int
    fun git_checkout_index(repo : GitRepository*, index : GitIndex*, opts : GitCheckoutOptions*) : Int
    fun git_checkout_options_init(opts : GitCheckoutOptions*, version : UInt) : Int
    fun git_checkout_tree(repo : GitRepository*, treeish : GitObject*, opts : GitCheckoutOptions*) : Int

    fun git_cherrypick(repo : GitRepository*, commit : GitCommit*, cherrypick_options : GitCherrypickOptions*) : Int
    fun git_cherrypick_commit(out_ptr : GitIndex**, repo : GitRepository*, cherrypick_commit : GitCommit*, our_commit : GitCommit*, mainline : UInt, merge_options : GitMergeOptions*) : Int
    fun git_cherrypick_options_init(opts : GitCherrypickOptions*, version : UInt) : Int

    fun git_clone(out_ptr : GitRepository**, url : LibC::Char*, local_path : LibC::Char*, options : GitCloneOptions*) : Int
    fun git_clone_options_init(opts : GitCloneOptions*, version : UInt) : Int

    fun git_commit_amend(id : GitOid*, commit_to_amend : GitCommit*, update_ref : LibC::Char*, author : GitSignature*, committer : GitSignature*, message_encoding : LibC::Char*, message : LibC::Char*, tree : GitTree*) : Int
    fun git_commit_author(commit : GitCommit*) : GitSignature*
    fun git_commit_author_with_mailmap(out_ptr : GitSignature**, commit : GitCommit*, mailmap : GitMailmap*) : Int
    fun git_commit_body(commit : GitCommit*) : LibC::Char*
    fun git_commit_committer(commit : GitCommit*) : GitSignature*
    fun git_commit_committer_with_mailmap(out_ptr : GitSignature**, commit : GitCommit*, mailmap : GitMailmap*) : Int
    fun git_commit_create(id : GitOid*, repo : GitRepository*, update_ref : LibC::Char*, author : GitSignature*, committer : GitSignature*, message_encoding : LibC::Char*, message : LibC::Char*, tree : GitTree*, parent_count : LibC::SizeT, parents : GitCommit**) : Int
    fun git_commit_create_buffer(out_ptr : GitBuf*, repo : GitRepository*, author : GitSignature*, committer : GitSignature*, message_encoding : LibC::Char*, message : LibC::Char*, tree : GitTree*, parent_count : LibC::SizeT, parents : GitCommit**) : Int
    fun git_commit_create_v(id : GitOid*, repo : GitRepository*, update_ref : LibC::Char*, author : GitSignature*, committer : GitSignature*, message_encoding : LibC::Char*, message : LibC::Char*, tree : GitTree*, parent_count : LibC::SizeT) : Int
    fun git_commit_create_with_signature(out_ptr : GitOid*, repo : GitRepository*, commit_content : LibC::Char*, signature : LibC::Char*, signature_field : LibC::Char*) : Int
    fun git_commit_dup(out_ptr : GitCommit**, source : GitCommit*) : Int
    fun git_commit_extract_signature(signature : GitBuf*, signed_data : GitBuf*, repo : GitRepository*, commit_id : GitOid*, field : LibC::Char*) : Int
    fun git_commit_free(commit : GitCommit*) : Void
    fun git_commit_header_field(out_ptr : GitBuf*, commit : GitCommit*, field : LibC::Char*) : Int
    fun git_commit_id(commit : GitCommit*) : GitOid*
    fun git_commit_lookup(commit : GitCommit**, repo : GitRepository*, id : GitOid*) : Int
    fun git_commit_lookup_prefix(commit : GitCommit**, repo : GitRepository*, id : GitOid*, len : LibC::SizeT) : Int
    fun git_commit_message(commit : GitCommit*) : LibC::Char*
    fun git_commit_message_encoding(commit : GitCommit*) : LibC::Char*
    fun git_commit_message_raw(commit : GitCommit*) : LibC::Char*
    fun git_commit_nth_gen_ancestor(ancestor : GitCommit**, commit : GitCommit*, n : UInt) : Int
    fun git_commit_owner(commit : GitCommit*) : GitRepository*
    fun git_commit_parent(out_ptr : GitCommit**, commit : GitCommit*, n : UInt) : Int
    fun git_commit_parent_id(commit : GitCommit*, n : UInt) : GitOid*
    fun git_commit_raw_header(commit : GitCommit*) : LibC::Char*
    fun git_commit_summary(commit : GitCommit*) : LibC::Char*
    fun git_commit_time(commit : GitCommit*) : GitTimeT
    fun git_commit_time_offset(commit : GitCommit*) : Int
    fun git_commit_tree(tree_out : GitTree**, commit : GitCommit*) : Int
    fun git_commit_tree_id(commit : GitCommit*) : GitOid*

    fun git_config_add_file_ondisk(cfg : GitConfig*, path : LibC::Char*, level : GitConfigLevelT, repo : GitRepository*, force : Int) : Int
    fun git_config_backend_foreach_match(backend : GitConfigBackend*, regexp : LibC::Char*, callback : GitConfigForeachCb, payload : Void*) : Int
    fun git_config_delete_entry(cfg : GitConfig*, name : LibC::Char*) : Int
    fun git_config_delete_multivar(cfg : GitConfig*, name : LibC::Char*, regexp : LibC::Char*) : Int
    fun git_config_entry_free(entry : GitConfigEntry*) : Void
    fun git_config_find_global(out_ptr : GitBuf*) : Int
    fun git_config_find_programdata(out_ptr : GitBuf*) : Int
    fun git_config_find_system(out_ptr : GitBuf*) : Int
    fun git_config_find_xdg(out_ptr : GitBuf*) : Int
    fun git_config_foreach(cfg : GitConfig*, callback : GitConfigForeachCb, payload : Void*) : Int
    fun git_config_foreach_match(cfg : GitConfig*, regexp : LibC::Char*, callback : GitConfigForeachCb, payload : Void*) : Int
    fun git_config_free(cfg : GitConfig*) : Void
    fun git_config_get_bool(out_ptr : Int*, cfg : GitConfig*, name : LibC::Char*) : Int
    fun git_config_get_entry(out_ptr : GitConfigEntry**, cfg : GitConfig*, name : LibC::Char*) : Int
    fun git_config_get_int32(out_ptr : Int32T*, cfg : GitConfig*, name : LibC::Char*) : Int
    fun git_config_get_int64(out_ptr : Int64T*, cfg : GitConfig*, name : LibC::Char*) : Int
    fun git_config_get_mapped(out_ptr : Int*, cfg : GitConfig*, name : LibC::Char*, maps : GitConfigmap*, map_n : LibC::SizeT) : Int
    fun git_config_get_multivar_foreach(cfg : GitConfig*, name : LibC::Char*, regexp : LibC::Char*, callback : GitConfigForeachCb, payload : Void*) : Int
    fun git_config_get_path(out_ptr : GitBuf*, cfg : GitConfig*, name : LibC::Char*) : Int
    fun git_config_get_string(out_ptr : LibC::Char**, cfg : GitConfig*, name : LibC::Char*) : Int
    fun git_config_get_string_buf(out_ptr : GitBuf*, cfg : GitConfig*, name : LibC::Char*) : Int
    fun git_config_iterator_free(iter : GitConfigIterator*) : Void
    fun git_config_iterator_glob_new(out_ptr : GitConfigIterator**, cfg : GitConfig*, regexp : LibC::Char*) : Int
    fun git_config_iterator_new(out_ptr : GitConfigIterator**, cfg : GitConfig*) : Int
    fun git_config_lock(tx : GitTransaction**, cfg : GitConfig*) : Int
    fun git_config_lookup_map_value(out_ptr : Int*, maps : GitConfigmap*, map_n : LibC::SizeT, value : LibC::Char*) : Int
    fun git_config_multivar_iterator_new(out_ptr : GitConfigIterator**, cfg : GitConfig*, name : LibC::Char*, regexp : LibC::Char*) : Int
    fun git_config_new(out_ptr : GitConfig**) : Int
    fun git_config_next(entry : GitConfigEntry**, iter : GitConfigIterator*) : Int
    fun git_config_open_default(out_ptr : GitConfig**) : Int
    fun git_config_open_global(out_ptr : GitConfig**, config : GitConfig*) : Int
    fun git_config_open_level(out_ptr : GitConfig**, parent : GitConfig*, level : GitConfigLevelT) : Int
    fun git_config_open_ondisk(out_ptr : GitConfig**, path : LibC::Char*) : Int
    fun git_config_parse_bool(out_ptr : Int*, value : LibC::Char*) : Int
    fun git_config_parse_int32(out_ptr : Int32T*, value : LibC::Char*) : Int
    fun git_config_parse_int64(out_ptr : Int64T*, value : LibC::Char*) : Int
    fun git_config_parse_path(out_ptr : GitBuf*, value : LibC::Char*) : Int
    fun git_config_set_bool(cfg : GitConfig*, name : LibC::Char*, value : Int) : Int
    fun git_config_set_int32(cfg : GitConfig*, name : LibC::Char*, value : Int32T) : Int
    fun git_config_set_int64(cfg : GitConfig*, name : LibC::Char*, value : Int64T) : Int
    fun git_config_set_multivar(cfg : GitConfig*, name : LibC::Char*, regexp : LibC::Char*, value : LibC::Char*) : Int
    fun git_config_set_string(cfg : GitConfig*, name : LibC::Char*, value : LibC::Char*) : Int
    fun git_config_snapshot(out_ptr : GitConfig**, config : GitConfig*) : Int

    fun git_libgit2_features : Int
    fun git_libgit2_init : Int
    fun git_libgit2_opts(option : Int) : Int
    fun git_libgit2_shutdown : Int
    fun git_libgit2_version(major : Int*, minor : Int*, rev : Int*) : Int
  end
end
