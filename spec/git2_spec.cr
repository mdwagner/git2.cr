require "./spec_helper"

describe Git2 do
  around_each do |example|
    with_tempfile("git2") do |tempdir|
      Dir.mkdir(tempdir)
      Dir.cd(tempdir) do
        begin
          Git2::LibGit2.git_libgit2_init
          puts FileUtils.pwd
          example.run
        ensure
          Git2::LibGit2.git_libgit2_shutdown
        end
      end
    end
  end

  it "works?" do
    _email = "test@a.b.com"
    _name = "test"

    repo = Git2::Repository.init(Path.new(FileUtils.pwd))
    config = repo.config
    config["user.email"] = _email
    config["user.name"] = _name

    repo.bare?.should eq(false)
    repo.empty?.should eq(true)
    repo.shallow?.should eq(false)
    repo.worktree?.should eq(false)

    config["user.name", String].should eq(_name)
    config["user.email", String].should eq(_email)

    sig = repo.signature
    sig.name.should eq(_name)
    sig.email.should eq(_email)
  end

  pending "matches have_files/expectation.cr" do
    # git init
    # git config user.email "test@a.b.com"
    # git config user.name "test"

    repo = Git2::Repository.init(Path.new(FileUtils.pwd))
    repo.config["user.email"] = "test@a.b.com"
    repo.config["user.name"] = "test"
    sig = repo.signature
  end
end
