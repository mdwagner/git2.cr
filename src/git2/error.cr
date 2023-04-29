require "./lib_git2"

module Git2
  module Error
    extend self

    def check!(status : Int32) : Nil
      if error_code = GitErrorCode.from_value?(status)
        unless error_code.try(&.git_ok?)
          cause = nil
          if git_error = LibGit2.git_error_last
            message = String.new(git_error.value.message)
            cause = get_error_cause(git_error.value.klass, message)
          end

          case error_code
          in .git_error?
            raise GenericError.new(cause: cause)
          in .git_enotfound?
            raise NotFoundError.new(cause: cause)
          in .git_eexists?
            raise ExistsError.new(cause: cause)
          in .git_eambiguous?
            raise AmbiguousError.new(cause: cause)
          in .git_ebufs?
            raise BufferError.new(cause: cause)
          in .git_ebarerepo?
            raise BareRepoError.new(cause: cause)
          in .git_eunbornbranch?
            raise UnbornBranchError.new(cause: cause)
          in .git_eunmerged?
            raise UnmergedError.new(cause: cause)
          in .git_enonfastforward?
            raise NonFastForwardError.new(cause: cause)
          in .git_einvalidspec?
            raise InvalidSpecError.new(cause: cause)
          in .git_econflict?
            raise ConflictError.new(cause: cause)
          in .git_elocked?
            raise LockedError.new(cause: cause)
          in .git_emodified?
            raise ModifiedError.new(cause: cause)
          in .git_eauth?
            raise AuthError.new(cause: cause)
          in .git_ecertificate?
            raise CertificateError.new(cause: cause)
          in .git_eapplied?
            raise AppliedError.new(cause: cause)
          in .git_epeel?
            raise PeelError.new(cause: cause)
          in .git_eeof?
            raise EOFError.new(cause: cause)
          in .git_einvalid?
            raise InvalidError.new(cause: cause)
          in .git_euncommitted?
            raise UncommittedError.new(cause: cause)
          in .git_edirectory?
            raise DirectoryError.new(cause: cause)
          in .git_emergeconflict?
            raise MergeConflictError.new(cause: cause)
          in .git_passthrough?
            raise PassthroughError.new(cause: cause)
          in .git_iterover?
            raise IteratorOverError.new(cause: cause)
          in .git_retry?
            raise RetryError.new(cause: cause)
          in .git_emismatch?
            raise MismatchError.new(cause: cause)
          in .git_eindexdirty?
            raise IndexDirtyError.new(cause: cause)
          in .git_eapplyfail?
            raise ApplyFailError.new(cause: cause)
          in .git_ok?, .git_euser?
            # noop
          end
        end
      else
        raise UnknownError.new(status)
      end
    end

    private def get_error_cause(klass : Int32, message : String)
      {% begin %}
        case GitErrorT.from_value(klass)
        {% for c in GitErrorT.constants %}
          in .{{c.underscore.id}}?
            {{c.gsub(/^GIT_/, "").underscore.camelcase.id}}.new(message)
        {% end %}
        end
      {% end %}
    end
  end

  {% for c in GitErrorT.constants %}
    class {{c.gsub(/^GIT_/, "").underscore.camelcase.id}} < Exception
    end
  {% end %}

  class GenericError < Exception
  end

  class NotFoundError < Exception
    def initialize(message = "Requested object could not be found", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class ExistsError < Exception
    def initialize(message = "Object exists preventing operation", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class AmbiguousError < Exception
    def initialize(message = "More than one object matches", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class BufferError < Exception
    def initialize(message = "Output buffer too short to hold data", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class BareRepoError < Exception
    def initialize(message = "Operation not allowed on bare repository", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class UnbornBranchError < Exception
    def initialize(message = "HEAD refers to branch with no commits", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class UnmergedError < Exception
    def initialize(message = "Merge in progress prevented operation", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class NonFastForwardError < Exception
    def initialize(message = "Reference was not fast-forwardable", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class InvalidSpecError < Exception
    def initialize(message = "Name/ref spec was not in a valid format", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class ConflictError < Exception
    def initialize(message = "Checkout conflicts prevented operation", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class LockedError < Exception
    def initialize(message = "Lock file prevented operation", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class ModifiedError < Exception
    def initialize(message = "Reference value does not match expected", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class AuthError < Exception
    def initialize(message = "Authentication error", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class CertificateError < Exception
    def initialize(message = "Server certificate is invalid", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class AppliedError < Exception
    def initialize(message = "Patch/merge has already been applied", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class PeelError < Exception
    def initialize(message = "The requested peel operation is not possible", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class EOFError < Exception
    def initialize(message = "Unexpected EOF", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class InvalidError < Exception
    def initialize(message = "Invalid operation or input", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class UncommittedError < Exception
    def initialize(message = "Uncommitted changes in index prevented operation", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class DirectoryError < Exception
    def initialize(message = "The operation is not valid for a directory", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class MergeConflictError < Exception
    def initialize(message = "A merge conflict exists and cannot continue", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class PassthroughError < Exception
    def initialize(message = "A user-configured callback refused to act", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class IteratorOverError < Exception
    def initialize(message = "Signals end of iteration with iterator", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class RetryError < Exception
    def initialize(message = "Internal only", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class MismatchError < Exception
    def initialize(message = "Hashsum mismatch in object", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class IndexDirtyError < Exception
    def initialize(message = "Unsaved changes in the index would be overwritten", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class ApplyFailError < Exception
    def initialize(message = "Patch application failed", cause : Exception? = nil)
      super(message: message, cause: cause)
    end
  end

  class UnknownError < Exception
    def initialize(@status : Int32, message = "An unknown error occurred")
      super(message)
    end
  end
end
