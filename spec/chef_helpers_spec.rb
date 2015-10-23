require 'spec_helper'

class Dummy; include ChefHelpers; end

RSpec.describe ChefHelpers do
  let(:dummy) { Dummy.new }
  let(:password) { 'sekrit' }

  it 'has a version number' do
    expect(ChefHelpers::VERSION).not_to be nil
  end

  describe '#encrypt_password' do
    it 'calls the method successfully' do
      expect { dummy.encrypt_password(password) }.to_not raise_error
    end

    it 'returns an encrypted password' do
      expect(dummy.encrypt_password(password)).to match(/^\$6\$/)
    end

    it 'returns a valid password hash' do
      encrypted = dummy.encrypt_password(password)
      expect(encrypted).to be_a_valid_password_hash_for(password)
    end
  end
end
