require "./spec_helper"

#alias LibGit2 = Git2::LibGit2

#def check_lg2(error, message, extra = nil)
  #return if error == 0
  #lg2msg = ""
  #spacer = ""
  #if (lg2err = LibGit2.git_error_last) && lg2err.value.message
    #lg2msg = lg2err.value.message
    #spacer = " - "
  #end
  #if extra
    #abort "#{message} '#{extra}' [#{error}]#{spacer}#{lg2msg}"
  #else
    #abort "#{message} [#{error}]#{spacer}#{lg2msg}"
  #end
#end

#def fatal(message, extra = nil)
  #if extra
    #abort "#{message} #{extra}"
  #else
    #abort "#{message}"
  #end
#end

#describe Git2 do
  #around_each do |example|
    #with_tempfile("git2") do |tempdir|
      #Dir.mkdir(tempdir)
      #Dir.cd(tempdir) do
        #begin
          #LibGit2.git_libgit2_init
          #puts FileUtils.pwd
          #example.run
        #ensure
          #LibGit2.git_libgit2_shutdown
        #end
      #end
    #end
  #end

  #it "matches have_files/expectation.cr" do
    ## git init
    #repo = Git2::GitRepository.init(FileUtils.pwd)
    ##check_lg2(LibGit2.git_repository_init(out repo, FileUtils.pwd, 0), "Could not initialize repository")
    ## git config user.email "test@a.b.com"
    #config = repo.config
    #config["user.email"] = "test@a.b.com"
    #config["user.name"] = "test"
    ##check_lg2(LibGit2.git_repository_config(out config, repo), "Failed to get config")
    ##check_lg2(LibGit2.git_config_set_string(config, "user.email", "test@a.b.com"), "Failed to set config")
    ## git config user.name "test"
    ##check_lg2(LibGit2.git_config_set_string(config, "user.name", "test"), "Failed to set config")
    ##LibGit2.git_config_free(config)
    ## touch initial
    #if LibGit2.git_signature_default(out sig, repo) < 0
      #fatal "Unable to create a commit signature.", "Perhaps 'user.name' and 'user.email' are not set"
    #end
    #if LibGit2.git_repository_index(out index, repo) < 0
      #fatal "Could not open repository index"
    #end
    #if LibGit2.git_index_write_tree(out tree_id, index) < 0
      #fatal "Unable to write initial tree from index"
    #end
    #LibGit2.git_index_free(index)
    #if LibGit2.git_tree_lookup(out tree, repo, pointerof(tree_id)) < 0
      #fatal "Could not look up initial tree"
    #end
    #if LibGit2.git_commit_create_v(out _, repo, "HEAD", sig, sig, nil, "Initial commit", tree, 0) < 0
      #fatal "Could not create the initial commit"
    #end
    #LibGit2.git_tree_free(tree)
    #LibGit2.git_signature_free(sig)
    ## git checkout -b actual
    ## git add .
    ## git commit -m "initial"
    ## git checkout -b expected

    ## cp -R @expected_dir ./diff

    ## git add .
    ## git --no-pager diff --cached
    ## git commit -m "expected"
    ## git checkout actual
    ## rm -rf ./diff

    ## cp -R actual_dir ./diff

    ## git add .
    ## git --no-pager diff --cached
    ## git commit -m "actual"
    ## git --no-pager diff expected actual
    ## git --no-pager diff expected actual --stat
    ##LibGit2.git_repository_free(repo)

    #true.should eq(true)
  #end
#end
