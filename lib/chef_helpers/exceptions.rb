module ChefHelpers
  # Namespace for Exceptions raised by methods provided by [ChefHelpers]
  module Exceptions
    # This exception is raised if a password was generated, but for some reason
    # does not match the password that was supposed to be encrypted.
    #
    class InvalidPasswordError < StandardError
      # Error message specific to the InvalidPasswordError.
      #
      # @return [String] The error message.
      def message
        'The password hash generated did not match the password passed in.'
      end
    end
  end
end
