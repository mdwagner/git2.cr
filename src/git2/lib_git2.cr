require "./lib_git2_enums"

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

    struct GitStatusEntry
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

    fun git_packbuilder_foreach(pb : GitPackbuilder*, cb : GitPackbuilderForeachCb, payload : Void*) : Int
    fun git_packbuilder_free(pb : GitPackbuilder*) : Void
    fun git_packbuilder_hash(pb : GitPackbuilder*) : GitOid*
    fun git_packbuilder_insert(pb : GitPackbuilder*, id : GitOid*, name : Char*) : Int
    fun git_packbuilder_insert_commit(pb : GitPackbuilder*, id : GitOid*) : Int
    fun git_packbuilder_insert_recur(pb : GitPackbuilder*, id : GitOid*, name : Char*) : Int
    fun git_packbuilder_insert_tree(pb : GitPackbuilder*, id : GitOid*) : Int
    fun git_packbuilder_insert_walk(pb : GitPackbuilder*, walk : GitRevwalk*) : Int
    fun git_packbuilder_new(_out : GitPackbuilder**, repo : GitRepository*) : Int
    fun git_packbuilder_object_count(pb : GitPackbuilder*) : SizeT
    fun git_packbuilder_set_callbacks(pb : GitPackbuilder*, progress_cb : GitPackbuilderProgress, progress_cb_payload : Void*) : Int
    fun git_packbuilder_set_threads(pb : GitPackbuilder*, n : UInt) : UInt
    fun git_packbuilder_write(pb : GitPackbuilder*, path : Char*, mode : UInt, progress_cb : GitIndexerProgressCb, progress_cb_payload : Void*) : Int
    fun git_packbuilder_write_buf(buf : GitBuf*, pb : GitPackbuilder*) : Int
    fun git_packbuilder_written(pb : GitPackbuilder*) : SizeT

    fun git_patch_free(patch : GitPatch*) : Void
    fun git_patch_from_blob_and_buffer(_out : GitPatch**, old_blob : GitBlob*, old_as_path : Char*, buffer : Void*, buffer_len : SizeT, buffer_as_path : Char*, opts : GitDiffOptions*) : Int
    fun git_patch_from_blobs(_out : GitPatch**, old_blob : GitBlob*, old_as_path : Char*, new_blob : GitBlob*, new_as_path : Char*, opts : GitDiffOptions*) : Int
    fun git_patch_from_buffers(_out : GitPatch**, old_buffer : Void*, old_len : SizeT, old_as_path : Char*, new_buffer : Void*, new_len : SizeT, new_as_path : Char*, opts : GitDiffOptions*) : Int
    fun git_patch_from_diff(_out : GitPatch**, diff : GitDiff*, idx : SizeT) : Int
    fun git_patch_get_delta(patch : GitPatch*) : GitDiffDelta*
    fun git_patch_get_hunk(_out : GitDiffHunk**, lines_in_hunk : SizeT*, patch : GitPatch*, hunk_idx : SizeT) : Int
    fun git_patch_get_lines_in_hunk(_out : GitDiffLine**, patch : GitPatch*, hunk_idx : SizeT, line_of_hunk : SizeT) : Int
    fun git_patch_line_stats(total_context : SizeT*, total_additions : SizeT*, total_deletions : SizeT*, patch : GitPatch*) : Int
    fun git_patch_num_hunks(patch : GitPatch*) : SizeT
    fun git_patch_num_lines_in_hunk(patch : GitPatch*, hunk_idx : SizeT) : Int
    fun git_patch_print(patch : GitPatch*, print_cb : GitDiffLineCb, payload : Void*) : Int
    fun git_patch_size(patch : GitPatch*, include_context : Int, include_hunk_headers : Int, include_file_headers : Int) : SizeT
    fun git_patch_to_buf(_out : GitBuf*, patch : GitPatch*) : Int

    fun git_pathspec_free(ps : GitPathspec*) : Void
    fun git_pathspec_match_diff(_out : GitPathspecMatchList**, diff : GitDiff*, flags : UInt32T, ps : GitPathspec*) : Int
    fun git_pathspec_match_index(_out : GitPathspecMatchList**, index : GitIndex*, flags : UInt32T, ps : GitPathspec*) : Int
    fun git_pathspec_match_list_diff_entry(m : GitPathspecMatchList*, pos : SizeT) : GitDiffDelta*
    fun git_pathspec_match_list_entry(m : GitPathspecMatchList*, pos : SizeT) : Char*
    fun git_pathspec_match_list_entrycount(m : GitPathspecMatchList*) : SizeT
    fun git_pathspec_match_list_failed_entry(m : GitPathspecMatchList*, pos : SizeT) : Char*
    fun git_pathspec_match_list_failed_entrycount(m : GitPathspecMatchList*) : SizeT
    fun git_pathspec_match_list_free(m : GitPathspecMatchList*) : Void
    fun git_pathspec_match_tree(_out : GitPathspecMatchList**, tree : GitTree*, flags : UInt32T, ps : GitPathspec*) : Int
    fun git_pathspec_match_workdir(_out : GitPathspecMatchList**, repo : GitRepository*, flags : UInt32T, ps : GitPathspec*) : Int
    fun git_pathspec_matches_path(ps : GitPathspec*, flags : UInt32T, path : Char*) : Int
    fun git_pathspec_new(_out : GitPathspec**, pathspec : GitStrarray*) : Int

    fun git_proxy_options_init(opts : GitProxyOptions*, version : UInt) : Int

    fun git_push_options_init(opts : GitPushOptions*, version : UInt) : Int

    fun git_rebase_abort(rebase : GitRebase*) : Int
    fun git_rebase_commit(id : GitOid*, rebase : GitRebase*, author : GitSignature*, committer : GitSignature*, message_encoding : Char*, message : Char*) : Int
    fun git_rebase_finish(rebase : GitRebase*, signature : GitSignature*) : Int
    fun git_rebase_free(rebase : GitRebase*) : Void
    fun git_rebase_init(_out : GitRebase**, repo : GitRepository*, branch : GitAnnotatedCommit*, upstream : GitAnnotatedCommit*, onto : GitAnnotatedCommit*, opts : GitRebaseOptions*) : Int
    fun git_rebase_inmemory_index(index : GitIndex**, rebase : GitRebase*) : Int
    fun git_rebase_next(operation : GitRebaseOperation**, rebase : GitRebase*) : Int
    fun git_rebase_onto_id(rebase : GitRebase*) : GitOid*
    fun git_rebase_onto_name(rebase : GitRebase*) : Char*
    fun git_rebase_open(_out : GitRebase**, repo : GitRepository*, opts : GitRebaseOptions*) : Int
    fun git_rebase_operation_byindex(rebase : GitRebase*, idx : SizeT) : GitRebaseOperation*
    fun git_rebase_operation_current(rebase : GitRebase*) : SizeT
    fun git_rebase_operation_entrycount(rebase : GitRebase*) : SizeT
    fun git_rebase_options_init(opts : GitRebaseOptions*, version : UInt) : Int
    fun git_rebase_orig_head_id(rebase : GitRebase*) : GitOid*
    fun git_rebase_orig_head_name(rebase : GitRebase*) : Char*

    fun git_refdb_compress(refdb : GitRefdb*) : Int
    fun git_refdb_free(refdb : GitRefdb*) : Void
    fun git_refdb_new(_out : GitRefdb**, repo : GitRepository*) : Int
    fun git_refdb_open(_out : GitRefdb**, repo : GitRepository*) : Int

    fun git_reference_cmp(ref1 : GitReference*, ref2 : GitReference*) : Int
    fun git_reference_create(_out : GitReference**, repo : GitRepository*, name : Char*, id : GitOid*, force : Int, log_message : Char*) : Int
    fun git_reference_create_matching(_out : GitReference**, repo : GitRepository*, name : Char*, id : GitOid*, force : Int, current_id : GitOid*, log_message : Char*) : Int
    fun git_reference_delete(ref : GitReference*) : Int
    fun git_reference_dup(dest : GitReference**, source : GitReference*) : Int
    fun git_reference_dwim(_out : GitReference**, repo : GitRepository*, shorthand : Char*) : Int
    fun git_reference_ensure_log(repo : GitRepository*, refname : Char*) : Int
    fun git_reference_foreach(repo : GitRepository*, callback : GitReferenceForeachCb, payload : Void*) : Int
    fun git_reference_foreach_glob(repo : GitRepository*, glob : Char*, callback : GitReferenceForeachNameCb, payload : Void*) : Int
    fun git_reference_foreach_name(repo : GitRepository*, callback : GitReferenceForeachNameCb, payload : Void*) : Int
    fun git_reference_free(ref : GitReference*) : Void
    fun git_reference_has_log(repo : GitRepository*, refname : Char*) : Int
    fun git_reference_is_branch(ref : GitReference*) : Int
    fun git_reference_is_note(ref : GitReference*) : Int
    fun git_reference_is_remote(ref : GitReference*) : Int
    fun git_reference_is_tag(ref : GitReference*) : Int
    fun git_reference_is_valid_name(refname : Char*) : Int
    fun git_reference_iterator_free(iter : GitReferenceIterator*) : Void
    fun git_reference_iterator_glob_new(_out : GitReferenceIterator**, repo : GitRepository*, glob : Char*) : Int
    fun git_reference_iterator_new(_out : GitReferenceIterator**, repo : GitRepository*) : Int
    fun git_reference_list(array : GitStrarray*, repo : GitRepository*) : Int
    fun git_reference_lookup(_out : GitReference**, repo : GitRepository*, name : Char*) : Int
    fun git_reference_name(ref : GitReference*) : Char*
    fun git_reference_name_to_id(_out : GitOid*, repo : GitRepository*, name : Char*) : Int
    fun git_reference_next(_out : GitReference**, iter : GitReferenceIterator*) : Int
    fun git_reference_next_name(_out : GitReference**, iter : GitReferenceIterator*) : Int
    fun git_reference_normalize_name(buffer_out : Char*, buffer_size : SizeT, name : Char*, flags : UInt) : Int
    fun git_reference_owner(ref : GitReference*) : GitRepository*
    fun git_reference_peel(_out : GitObject**, ref : GitReference*, type : GitObjectT) : Int
    fun git_reference_remove(repo : GitRepository*, name : Char*) : Int
    fun git_reference_rename(new_ref : GitReference**, ref : GitReference*, new_name : Char*, force : Int, log_message : Char*) : Int
    fun git_reference_resolve(_out : GitReference**, ref : GitReference*) : Int
    fun git_reference_set_target(_out : GitReference**, ref : GitReference*, id : GitOid*, log_message : Char*) : Int
    fun git_reference_shorthand(ref : GitReference*) : Char*
    fun git_reference_symbolic_create(_out : GitReference**, repo : GitRepository*, name : Char*, target : Char*, force : Int, log_message : Char*) : Int
    fun git_reference_symbolic_create_matching(_out : GitReference**, repo : GitRepository*, name : Char*, target : Char*, force : Int, current_value : Char*, log_message : Char*) : Int
    fun git_reference_symbolic_set_target(_out : GitReference**, ref : GitReference*, target : Char*, log_message : Char*) : Int
    fun git_reference_symbolic_target(ref : GitReference*) : Char*
    fun git_reference_target(ref : GitReference*) : GitOid*
    fun git_reference_target_peel(ref : GitReference*) : GitOid*
    fun git_reference_type(ref : GitReference*) : GitReferenceT

    fun git_reflog_append(reflog : GitReflog*, id : GitOid*, committer : GitSignature*, msg : Char*) : Int
    fun git_reflog_delete(repo : GitRepository*, name : Char*) : Int
    fun git_reflog_drop(reflog : GitReflog*, idx : SizeT, rewrite_previous_entry : Int) : Int
    fun git_reflog_entry_byindex(reflog : GitReflog*, idx : SizeT) : GitReflogEntry*
    fun git_reflog_entry_committer(entry : GitReflogEntry*) : GitSignature*
    fun git_reflog_entry_id_new(entry : GitReflogEntry*) : GitOid*
    fun git_reflog_entry_id_old(entry : GitReflogEntry*) : GitOid*
    fun git_reflog_entry_message(entry : GitReflogEntry*) : Char*
    fun git_reflog_entrycount(reflog : GitReflog*) : SizeT
    fun git_reflog_free(reflog : GitReflog*) : Void
    fun git_reflog_read(_out : GitReflog**, repo : GitRepository*, name : Char*) : Int
    fun git_reflog_rename(repo : GitRepository*, old_name : Char*, name : Char*) : Int
    fun git_reflog_write(reflog : GitReflog*) : Void

    fun git_refspec_direction(spec : GitRefspec*) : GitDirection
    fun git_refspec_dst(refspec : GitRefspec*) : Char*
    fun git_refspec_dst_matches(refspec : GitRefspec*, refname : Char*) : Int
    fun git_refspec_force(refspec : GitRefspec*) : Int
    fun git_refspec_free(refspec : GitRefspec*) : Void
    fun git_refspec_parse(refspec : GitRefspec**, input : Char*, is_fetch : Int) : Int
    fun git_refspec_rtransform(_out : GitBuf*, spec : GitRefspec*, name : Char*) : Int
    fun git_refspec_src(refspec : GitRefspec*) : Char*
    fun git_refspec_src_matches(refspec : GitRefspec*, refname : Char*) : Int
    fun git_refspec_string(refspec : GitRefspec*) : Char*
    fun git_refspec_transform(_out : GitBuf*, spec : GitRefspec*, name : Char*) : Int

    fun git_remote_add_fetch(repo : GitRepository*, remote : Char*, refspec : Char*) : Int
    fun git_remote_add_push(repo : GitRepository*, remote : Char*, refspec : Char*) : Int
    fun git_remote_autotag(remote : GitRemote*) : GitRemoteAutotagOptionT
    fun git_remote_connect(remote : GitRemote*, direction : GitDirection, callbacks : GitRemoteCallbacks*, proxy_opts : GitProxyOptions*, custom_headers : GitStrarray*) : Int
    fun git_remote_connected(remote : GitRemote*) : Int
    fun git_remote_create(_out : GitRemote**, repo : GitRepository*, name : Char*, url : Char*) : Int
    fun git_remote_create_anonymous(_out : GitRemote**, repo : GitRepository*, url : Char*) : Int
    fun git_remote_create_detached(_out : GitRemote**, url : Char*) : Int
    fun git_remote_create_options_init(opts : GitRemoteCreateOptions*, version : UInt) : Int
    fun git_remote_create_with_fetchspec(_out : GitRemote**, repo : GitRepository*, name : Char*, url : Char*, fetch : Char*) : Int
    fun git_remote_create_with_opts(_out : GitRemote**, url : Char*, opts : GitRemoteCreateOptions*) : Int
    fun git_remote_default_branch(_out : GitBuf*, remote : GitRemote*) : Int
    fun git_remote_delete(repo : GitRepository*, name : Char*) : Int
    fun git_remote_disconnect(remote : GitRemote*) : Int
    fun git_remote_download(remote : GitRemote*, refspecs : GitStrarray*, opts : GitFetchOptions*) : Int
    fun git_remote_dup(dest : GitRemote**, source : GitRemote*) : Int
    fun git_remote_fetch(remote : GitRemote*, refspecs : GitStrarray*, opts : GitFetchOptions*, reflog_message : Char*) : Int
    fun git_remote_free(remote : GitRemote*) : Void
    fun git_remote_get_fetch_refspecs(array : GitStrarray*, remote : GitRemote*) : Int
    fun git_remote_get_push_refspecs(array : GitStrarray*, remote : GitRemote*) : Int
    fun git_remote_get_refspec(remote : GitRemote*, n : SizeT) : GitRefspec*
    fun git_remote_init_callbacks(opts : GitRemoteCallbacks*, version : UInt) : Int
    fun git_remote_is_valid_name(remote_name : Char*) : Int
    fun git_remote_list(_out : GitStrarray*, repo : GitRepository*) : Int
    fun git_remote_lookup(_out : GitRemote**, repo : GitRepository*, name : Char*) : Int
    fun git_remote_ls(_out : GitRemoteHead***, size : SizeT, remote : GitRemote*) : Int
    fun git_remote_name(remote : GitRemote*) : Char*
    fun git_remote_owner(remote : GitRemote*) : GitRepository*
    fun git_remote_prune(remote : GitRemote*, callbacks : GitRemoteCallbacks*) : Int
    fun git_remote_prune_refs(remote : GitRemote*) : Int
    fun git_remote_push(remote : GitRemote*, refspecs : GitStrarray*, opts : GitPushOptions*) : Int
    fun git_remote_pushurl(remote : GitRemote*) : Char*
    fun git_remote_refspec_count(remote : GitRemote*) : SizeT
    fun git_remote_rename(problems : GitStrarray*, repo : GitRepository*, name : Char*, new_name : Char*) : Int
    fun git_remote_set_autotag(repo : GitRepository*, remote : Char*, value : GitRemoteAutotagOptionT) : Int
    fun git_remote_set_pushurl(repo : GitRepository*, remote : Char*, url : Char*) : Int
    fun git_remote_set_url(repo : GitRepository*, remote : Char*, url : Char*) : Int
    fun git_remote_stats(remote : GitRemote*) : GitIndexerProgress*
    fun git_remote_stop(remote : GitRemote*) : Int
    fun git_remote_update_tips(remote : GitRemote*, callbacks : GitRemoteCallbacks*, update_fetchhead : Int, download_tags : GitRemoteAutotagOptionT, reflog_message : Char*) : Int
    fun git_remote_upload(remote : GitRemote*, refspecs : GitStrarray*, opts : GitPushOptions*) : Int
    fun git_remote_url(remote : GitRemote*) : Char*

    fun git_repository_commondir(repo : GitRepository*) : Char*
    fun git_repository_config(_out : GitConfig**, repo : GitRepository*) : Int
    fun git_repository_config_snapshot(_out : GitConfig**, repo : GitRepository*) : Int
    fun git_repository_detach_head(repo : GitRepository*) : Int
    fun git_repository_discover(_out : GitBuf*, start_path : Char*, across_fs : Int, ceiling_dirs : Char*) : Int
    fun git_repository_fetchhead_foreach(repo : GitRepository*, callback : GitRepositoryFetchheadForeachCb, payload : Void*) : Int
    fun git_repository_free(repo : GitRepository*) : Void
    fun git_repository_get_namespace(repo : GitRepository*) : Char*
    fun git_repository_hashfile(_out : GitOid*, repo : GitRepository*, path : Char*, type : GitObjectT, as_path : Char*) : Int
    fun git_repository_head(_out : GitReference**, repo : GitRepository*) : Int
    fun git_repository_head_detached(repo : GitRepository*) : Int
    fun git_repository_head_detached_for_worktree(repo : GitRepository*, name : Char*) : Int
    fun git_repository_head_for_worktree(_out : GitReference**, repo : GitRepository*, name : Char*) : Int
    fun git_repository_head_unborn(repo : GitRepository*) : Int
    fun git_repository_ident(name : Char**, email : Char**, repo : GitRepository*) : Int
    fun git_repository_index(_out : GitIndex**, repo : GitRepository*) : Int
    fun git_repository_init(_out : GitRepository**, path : Char*, is_bare : UInt) : Int
    fun git_repository_init_ext(_out : GitRepository**, repo_path : Char*, opts : GitRepositoryInitOptions*) : Int
    fun git_repository_init_options_init(opts : GitRepositoryInitOptions*, version : UInt) : Int
    fun git_repository_is_bare(repo : GitRepository*) : Int
    fun git_repository_is_empty(repo : GitRepository*) : Int
    fun git_repository_is_shallow(repo : GitRepository*) : Int
    fun git_repository_is_worktree(repo : GitRepository*) : Int
    fun git_repository_item_path(_out : GitBuf*, repo : GitRepository*, item : GitRepositoryItemT) : Int
    fun git_repository_mergehead_foreach(repo : GitRepository*, callback : GitRepositoryMergeheadForeachCb, payload : Void*) : Int
    fun git_repository_message(_out : GitBuf*, repo : GitRepository*) : Int
    fun git_repository_message_remove(repo : GitRepository*) : Int
    fun git_repository_odb(_out : GitOdb**, repo : GitRepository*) : Int
    fun git_repository_open(_out : GitRepository**, path : Char*) : Int
    fun git_repository_open_bare(_out : GitRepository**, bare_path : Char*) : Int
    fun git_repository_open_ext(_out : GitRepository**, path : Char*, flags : UInt, ceiling_dirs : Char*) : Int
    fun git_repository_open_from_worktree(_out : GitRepository**, wt : GitWorktree*) : Int
    fun git_repository_path(repo : GitRepository*) : Char*
    fun git_repository_refdb(_out : GitRefdb**, repo : GitRepository*) : Int
    fun git_repository_set_head(repo : GitRepository*, refname : Char*) : Int
    fun git_repository_set_head_detached(repo : GitRepository*, committish : GitOid*) : Int
    fun git_repository_set_head_detached_from_annotated(repo : GitRepository*, committish : GitAnnotatedCommit*) : Int
    fun git_repository_set_ident(repo : GitRepository*, name : Char*, email : Char*) : Int
    fun git_repository_set_namespace(repo : GitRepository*, nmspace : Char*) : Int
    fun git_repository_set_workdir(repo : GitRepository*, workdir : Char*, update_gitlink : Int) : Int
    fun git_repository_state(repo : GitRepository*) : Int
    fun git_repository_state_cleanup(repo : GitRepository*) : Int
    fun git_repository_workdir(repo : GitRepository*) : Char*
    fun git_repository_wrap_odb(_out : GitRepository**, odb : GitOdb*) : Int

    fun git_reset(repo : GitRepository*, target : GitObject*, reset_type : GitResetT, checkout_opts : GitCheckoutOptions*) : Int
    fun git_reset_default(repo : GitRepository*, target : GitObject*, reset_type : GitResetT, pathspecs : GitStrarray*) : Int
    fun git_reset_from_annotated(repo : GitRepository*, commit : GitAnnotatedCommit*, reset_type : GitResetT, checkout_opts : GitCheckoutOptions*) : Int

    fun git_revert(repo : GitRepository*, commit : GitCommit*, given_opts : GitRevertOptions*) : Int
    fun git_revert_commit(_out : GitIndex**, repo : GitRepository*, revert_commit : GitCommit*, our_commit : GitCommit*, mainline : UInt, merge_options : GitMergeOptions*) : Int
    fun git_revert_options_init(opts : GitRevertOptions*, version : UInt) : Int

    fun git_revparse(revspec : GitRevspec*, repo : GitRepository*, spec : Char*) : Int
    fun git_revparse_ext(object_out : GitObject**, reference_out : GitReference**, repo : GitRepository*, spec : Char*) : Int
    fun git_revparse_single(_out : GitObject**, repo : GitRepository*, spec : Char*) : Int

    fun git_revwalk_add_hide_cb(walk : GitRevwalk*, hide_cb : GitRevwalkHideCb, payload : Void*) : Int
    fun git_revwalk_free(walk : GitRevwalk*) : Void
    fun git_revwalk_hide(walk : GitRevwalk*, commit_id : GitOid*) : Int
    fun git_revwalk_hide_glob(walk : GitRevwalk*, glob : Char*) : Int
    fun git_revwalk_hide_head(walk : GitRevwalk*) : Int
    fun git_revwalk_hide_ref(walk : GitRevwalk*, refname : Char*) : Int
    fun git_revwalk_new(_out : GitRevwalk**, repo : GitRepository*) : Int
    fun git_revwalk_next(_out : GitOid*, walk : GitRevwalk*) : Int
    fun git_revwalk_push(walk : GitRevwalk*, id : GitOid*) : Int
    fun git_revwalk_push_glob(walk : GitRevwalk*, glob : Char*) : Int
    fun git_revwalk_push_head(walk : GitRevwalk*) : Int
    fun git_revwalk_push_range(walk : GitRevwalk*, range : Char*) : Int
    fun git_revwalk_push_ref(walk : GitRevwalk*, refname : Char*) : Int
    fun git_revwalk_repository(walk : GitRevwalk*) : GitRepository*
    fun git_revwalk_reset(walker : GitRevwalk*) : Int
    fun git_revwalk_simplify_first_parent(walk : GitRevwalk*) : Int
    fun git_revwalk_sorting(walk : GitRevwalk*, sort_node : UInt) : Int

    fun git_signature_default(_out : GitSignature**, repo : GitRepository*) : Int
    fun git_signature_dup(dest : GitSignature**, sig : GitSignature*) : Int
    fun git_signature_free(sig : GitSignature*) : Void
    fun git_signature_from_buffer(_out : GitSignature**, buf : Char*) : Int
    fun git_signature_new(_out : GitSignature**, name : Char*, email : Char*, time : GitTimeT, offset : Int) : Int
    fun git_signature_now(_out : GitSignature**, name : Char*, email : Char*) : Int

    fun git_stash_apply(repo : GitRepository*, index : SizeT, options : GitStashApplyOptions*) : Int
    fun git_stash_apply_options_init(opts : GitStashApplyOptions*, version : UInt) : Int
    fun git_stash_drop(repo : GitRepository*, index : SizeT) : Int
    fun git_stash_foreach(repo : GitRepository*, callback : GitStashCb, payload : Void*) : Int
    fun git_stash_pop(repo : GitRepository*, index : SizeT, options : GitStashApplyOptions*) : Int
    fun git_stash_save(_out : GitOid*, repo : GitRepository*, stasher : GitSignature*, message : Char*, flags : UInt32T) : Int

    fun git_status_byindex(statuslist : GitStatusList*, idx : SizeT) : GitStatusEntry*
    fun git_status_file(status_flags : UInt*, repo : GitRepository*, path : Char*) : Int
    fun git_status_foreach(repo : GitRepository*, callback : GitStatusCb, payload : Void*) : Int
    fun git_status_foreach_ext(repo : GitRepository*, opts : GitStatusOptions*, callback : GitStatusCb, payload : Void*) : Int
    fun git_status_list_entrycount(statuslist : GitStatusList*) : SizeT
    fun git_status_list_free(statuslist : GitStatusList*) : Void
    fun git_status_list_new(_out : GitStatusList**, repo : GitRepository*, opts : GitStatusOptions*) : Int
    fun git_status_options_init(opts : GitStatusOptions*, version : UInt) : Int
    fun git_status_should_ignore(ignored : Int*, repo : GitRepository*, path : Char*) : Int

    fun git_strarray_copy(tgt : GitStrarray*, src : GitStrarray*) : Int
    fun git_strarray_dispose(array : GitStrarray*) : Void
    fun git_strarray_free(array : GitStrarray*) : Void

    fun git_submodule_add_finalize(submodule : GitSubmodule*) : Int
    fun git_submodule_add_setup(_out : GitSubmodule**, repo : GitRepository*, url : Char*, path : Char*, use_gitlink : Int) : Int
    fun git_submodule_add_to_index(submodule : GitSubmodule*, write_index : Int) : Int
    fun git_submodule_branch(submodule : GitSubmodule*) : Char*
    fun git_submodule_clone(_out : GitRepository**, submodule : GitSubmodule*, opts : GitSubmoduleUpdateOptions*) : Int
    fun git_submodule_fetch_recurse_submodules(submodule : GitSubmodule*) : GitSubmoduleRecurseT
    fun git_submodule_foreach(repo : GitRepository*, callback : GitSubmoduleCb, payload : Void*) : Int
    fun git_submodule_free(submodule : GitSubmodule*) : Void
    fun git_submodule_head_id(submodule : GitSubmodule*) : GitOid*
    fun git_submodule_ignore(submodule : GitSubmodule*) : GitSubmoduleIgnoreT
    fun git_submodule_index_id(submodule : GitSubmodule*) : GitOid*
    fun git_submodule_init(submodule : GitSubmodule*, overwrite : Int) : Int
    fun git_submodule_location(location_status : UInt*, submodule : GitSubmodule*) : Int
    fun git_submodule_lookup(_out : GitSubmodule**, repo : GitRepository*, name : Char*) : Int
    fun git_submodule_name(submodule : GitSubmodule*) : Char*
    fun git_submodule_open(repo : GitRepository**, submodule : GitSubmodule*) : Int
    fun git_submodule_owner(submodule : GitSubmodule*) : GitRepository*
    fun git_submodule_path(submodule : GitSubmodule*) : Char*
    fun git_submodule_reload(submodule : GitSubmodule*, force : Int) : Int
    fun git_submodule_repo_init(_out : GitRepository**, sm : GitSubmodule*, use_gitlink : Int) : Int
    fun git_submodule_resolve_url(_out : GitBuf*, repo : GitRepository*, url : Char*) : Int
    fun git_submodule_set_branch(repo : GitRepository*, name : Char*, branch : Char*) : Int
    fun git_submodule_set_fetch_recurse_submodules(repo : GitRepository*, name : Char*, fetch_recurse_submodules : GitSubmoduleRecurseT) : Int
    fun git_submodule_set_ignore(repo : GitRepository*, name : Char*, ignore : GitSubmoduleIgnoreT) : Int
    fun git_submodule_set_update(repo : GitRepository*, name : Char*, update : GitSubmoduleUpdateT) : Int
    fun git_submodule_set_url(repo : GitRepository*, name : Char*, url : Char*) : Int
    fun git_submodule_status(status : UInt*, repo : GitRepository*, name : Char*, ignore : GitSubmoduleIgnoreT) : Int
    fun git_submodule_sync(submodule : GitSubmodule*) : Int
    fun git_submodule_update(submodule : GitSubmodule*, init : Int, options : GitSubmoduleUpdateOptions*) : Int
    fun git_submodule_update_options_init(opts : GitSubmoduleUpdateOptions*, version : UInt) : Int
    fun git_submodule_update_strategy(submodule : GitSubmodule*) : GitSubmoduleUpdateT
    fun git_submodule_url(submodule : GitSubmodule*) : Char*
    fun git_submodule_wd_id(submodule : GitSubmodule*) : GitOid*

    fun git_tag_annotation_create(oid : GitOid*, repo : GitRepository*, tag_name : Char*, target : GitObject*, tagger : GitSignature*, message : Char*) : Int
    fun git_tag_create(oid : GitOid*, repo : GitRepository*, tag_name : Char*, target : GitObject*, tagger : GitSignature*, message : Char*, force : Int) : Int
    fun git_tag_create_from_buffer(oid : GitOid*, repo : GitRepository*, buffer : Char*, force : Int) : Int
    fun git_tag_create_lightweight(oid : GitOid*, repo : GitRepository*, tag_name : Char*, target : GitObject*, force : Int) : Int
    fun git_tag_delete(repo : GitRepository*, tag_name : Char*) : Int
    fun git_tag_dup(_out : GitTag**, source : GitTag*) : Int
    fun git_tag_foreach(repo : GitRepository*, callback : GitTagForeachCb, payload : Void*) : Int
    fun git_tag_free(tag : GitTag*) : Void
    fun git_tag_id(tag : GitTag*) : GitOid*
    fun git_tag_list(tag_names : GitStrarray*, repo : GitRepository*) : Int
    fun git_tag_list_match(tag_names : GitStrarray*, pattern : Char*, repo : GitRepository*) : Int
    fun git_tag_lookup(_out : GitTag**, repo : GitRepository*, id : GitOid*) : Int
    fun git_tag_lookup_prefix(_out : GitTag**, repo : GitRepository*, id : GitOid*, len : SizeT) : Int
    fun git_tag_message(tag : GitTag*) : Char*
    fun git_tag_name(tag : GitTag*) : Char*
    fun git_tag_owner(tag : GitTag*) : GitRepository*
    fun git_tag_peel(tag_target_out : GitObject**, tag : GitTag*) : Int
    fun git_tag_tagger(tag : GitTag*) : GitSignature*
    fun git_tag_target(target_out : GitObject**, tag : GitTag*) : Int
    fun git_tag_target_id(tag : GitTag*) : GitOid*
    fun git_tag_target_type(tag : GitTag*) : GitObjectT

    fun git_trace_set(level : GitTraceLevelT, cb : GitTraceCb) : Int

    fun git_transaction_commit(tx : GitTransaction*) : Int
    fun git_transaction_free(tx : GitTransaction*) : Void
    fun git_transaction_lock_ref(tx : GitTransaction*, refname : Char*) : Int
    fun git_transaction_new(_out : GitTransaction**, repo : GitRepository*) : Int
    fun git_transaction_remove(tx : GitTransaction*, refname : Char*) : Int
    fun git_transaction_set_reflog(tx : GitTransaction*, refname : Char*, reflog : GitReflog*) : Int
    fun git_transaction_set_symbolic_target(tx : GitTransaction*, refname : Char*, target : Char*, sig : GitSignature*, msg : Char*) : Int
    fun git_transaction_set_target(tx : GitTransaction*, refname : Char*, target : GitOid*, sig : GitSignature*, msg : Char*) : Int

    fun git_tree_create_updated(_out : GitOid*, repo : GitRepository*, baseline : GitTree*, nupdates : SizeT, updates : GitTreeUpdate*) : Int
    fun git_tree_dup(_out : GitTree**, source : GitOid*) : Int
    fun git_tree_entry_byid(tree : GitTree*, id : GitOid*) : GitTreeEntry*
    fun git_tree_entry_byindex(tree : GitTree*, idx : SizeT) : GitTreeEntry*
    fun git_tree_entry_byname(tree : GitTree*, filename : Char*) : GitTreeEntry*
    fun git_tree_entry_bypath(_out : GitTreeEntry**, root : GitTree*, path : Char*) : Int
    fun git_tree_entry_cmp(e1 : GitTreeEntry*, e2 : GitTreeEntry*) : Int
    fun git_tree_entry_filemode(entry : GitTreeEntry*) : GitFilemodeT
    fun git_tree_entry_filemode_raw(entry : GitTreeEntry*) : GitFilemodeT
    fun git_tree_entry_free(entry : GitTreeEntry*) : Void
    fun git_tree_entry_id(entry : GitTreeEntry*) : GitOid*
    fun git_tree_entry_name(entry : GitTreeEntry*) : Char*
    fun git_tree_entry_to_object(object_out : GitObject**, repo : GitRepository*, entry : GitTreeEntry*) : Int
    fun git_tree_entry_type(entry : GitTreeEntry*) : GitObjectT
    fun git_tree_entrycount(tree : GitTree*) : SizeT
    fun git_tree_free(tree : GitTree*) : Void
    fun git_tree_id(tree : GitTree*) : GitOid*
    fun git_tree_lookup(_out : GitTree**, repo : GitRepository*, id : GitOid*) : Int
    fun git_tree_lookup_prefix(_out : GitTree**, repo : GitRepository*, id : GitOid*, len : SizeT) : Int
    fun git_tree_owner(tree : GitTree*) : GitRepository*
    fun git_tree_walk(tree : GitTree*, mode : GitTreewalkMode, callback : GitTreewalkCb, payload : Void*) : Int

    fun git_treebuilder_clear(bid : GitTreebuilder*) : Int
    fun git_treebuilder_entrycount(bid : GitTreebuilder*) : SizeT
    fun git_treebuilder_filter(bid : GitTreebuilder*, filter : GitTreebuilderFilterCb, payload : Void*) : Int
    fun git_treebuilder_free(bid : GitTreebuilder*) : Void
    fun git_treebuilder_get(bid : GitTreebuilder*, filename : Char*) : GitTreeEntry*
    fun git_treebuilder_insert(_out : GitTreeEntry**, bid : GitTreebuilder*, filename : Char*, id : GitOid*, filemode : GitFilemodeT) : Int
    fun git_treebuilder_new(_out : GitTreebuilder**, repo : GitRepository*, source : GitTree*) : Int
    fun git_treebuilder_remove(bid : GitTreebuilder*, filename : Char*) : Int
    fun git_treebuilder_write(id : GitOid*, bid : GitTreebuilder*) : Int
    fun git_treebuilder_write_with_buffer(oid : GitOid*, bid : GitTreebuilder*, tree : GitBuf*) : Int

    fun git_worktree_add(_out : GitWorktree**, repo : GitRepository*, name : Char*, path : Char*, opts : GitWorktreeAddOptions*) : Int
    fun git_worktree_add_options_init(opts : GitWorktreeAddOptions*, version : UInt) : Int
    fun git_worktree_free(wt : GitWorktree*) : Void
    fun git_worktree_is_locked(reason : GitBuf*, wt : GitWorktree*) : Int
    fun git_worktree_is_prunable(wt : GitWorktree*, opts : GitWorktreePruneOptions*) : Int
    fun git_worktree_list(_out : GitStrarray*, repo : GitRepository*) : Int
    fun git_worktree_lock(wt : GitWorktree*, reason : Char*) : Int
    fun git_worktree_lookup(_out : GitWorktree**, repo : GitRepository*, name : Char*) : Int
    fun git_worktree_name(wt : GitWorktree*) : Char*
    fun git_worktree_open_from_repository(_out : GitWorktree**, repo : GitRepository*) : Int
    fun git_worktree_path(wt : GitWorktree*) : Char*
    fun git_worktree_prune(wt : GitWorktree*, opts : GitWorktreePruneOptions*) : Char*
    fun git_worktree_prune_options_init(opts : GitWorktreePruneOptions*, version : UInt) : Int
    fun git_worktree_unlock(wt : GitWorktree*) : Int
    fun git_worktree_validate(wt : GitWorktree*) : Int
  end
end
