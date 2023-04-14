module Git2
  @[Link("git2")]
  lib LibGit2
    alias Int = ::LibC::Int

    fun git_libgit2_version(major : Int*, minor : Int*, rev : Int*) : Int
    fun git_libgit2_init : Int
    fun git_libgit2_features : Int
  end
end
