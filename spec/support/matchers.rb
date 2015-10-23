require 'rspec/expectations'
require 'unix_crypt'

RSpec::Matchers.define :be_a_valid_password_hash_for do |expected|
  match do |actual|
    UnixCrypt.valid?(expected, actual)
  end
end
