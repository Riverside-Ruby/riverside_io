require 'rails_helper'

RSpec.describe Credential, type: :model do
  it { should belong_to(:password_request) }

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password) }
  it { should validate_presence_of(:expiration) }
end
