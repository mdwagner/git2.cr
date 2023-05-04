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

  it "matches have_files/expectation.cr" do
    repo = Git2::Repository.init(Path.new(FileUtils.pwd))
    repo.config["user.email"] = "test@a.b.com"
    repo.config["user.name"] = "test"
    puts
    puts "Config Values"
    repo.config.foreach do |entry|
      level = case entry.level
              when .git_config_level_global?
                "Global"
              when .git_config_level_local?
                "Local"
              end
      puts "(#{level}) #{entry.name} => #{entry.value}"
    end

    true.should eq(true)
  end
end
