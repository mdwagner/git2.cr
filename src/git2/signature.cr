module Git2
  # An action signature (e.g. for committers, taggers, etc)
  class Signature
    # Create a new action signature with default user and now timestamp
    #
    # This looks up the user.name and user.email from the configuration
    # and uses the current time as the timestamp, and creates a new signature
    # based on that information.
    def self.default(repo : Repository) : Signature
      Error.check! LibGit2.git_signature_default(out sig, repo)
      new(sig)
    rescue ex : NotFoundError
      raise NotFoundError.new(
        message: "'user.name' or 'user.email' are not set",
        cause: ex.cause
      )
    end

    # Create a new action signature with a timestamp of 'now'
    def self.now(name : String, email : String) : Signature
      Error.check! LibGit2.git_signature_now(out sig, name, email)
      new(sig)
    end

    # Create a new action signature
    #
    # NOTE: angle brackets ('<' and '>') characters are not allowed
    # to be used in either the name or the email parameter.
    def self.create(name : String, email : String, time : Time) : Signature
      Error.check! LibGit2.git_signature_new(out sig, name, email, time.to_unix, time.offset.seconds.minutes)
      new(sig)
    end

    # Create a new signature by parsing the given buffer
    #
    # Expected to be in the given format: `Real Name <email> timestamp tzoffset`,
    # where `timestamp` is the number of seconds since the Unix epoch and
    # `tzoffset` is the timezone offset in `hhmm` format (NOTE: lack of colon separator).
    def self.from_buffer(signature : String) : Signature
      Error.check! LibGit2.git_signature_from_buffer(out sig, signature)
      new(sig)
    end

    protected def initialize(@sig : LibGit2::GitSignature*)
    end

    # Full name of the author
    def name : String
      String.new(@sig.value.name)
    end

    # Email of the author
    def email : String
      String.new(@sig.value.email)
    end

    # Time when the action happened
    def time : Time
      epoch_time = Time.unix(@sig.value._when.time)
      offset = @sig.value._when.offset.minutes.total_seconds.to_i
      location = Time::Location.fixed(offset)
      epoch_time.in(location)
    end

    # Create a copy of an existing signature
    def dup : Signature
      Error.check! LibGit2.git_signature_dup(out new_sig, self)
      new(new_sig)
    end

    def to_unsafe
      @sig
    end

    def finalize
      LibGit2.git_signature_free(self)
    end
  end
end
