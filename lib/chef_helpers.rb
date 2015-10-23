require 'chef_helpers/version'
require 'chef_helpers/exceptions'
require 'unix_crypt'

# The top-level namespace
module ChefHelpers
  # Returns an encrypted, salted password hash for use in /etc/shadow and by
  # the Chef user resource.
  #
  # @param [String] password the password to encrypt.
  # @param [Symbol] hash_algo a symbol identifying the hashing algorithm to use.
  #   Valid options are:
  #     :sha512
  #     :sha256
  #     :md5
  #     :des
  #
  # @raise [InvalidPasswordError] if the generated hash does not match the
  #   password that was passed into the method.
  #
  # @return [String] the encrypted, salted password hash.
  #
  def encrypt_password(password, hash_algo = :sha512)
    build_password(password, hash_algo).tap do |pw|
      fail InvalidPasswordError unless UnixCrypt.valid?(password, pw)
    end
  end

  private

  def build_password(password, hash_algo = :sha512)
    hashing_alogrithm = UnixCrypt.const_get(hash_algo.upcase)
    hashing_alogrithm.build(password)
  end
end
