require 'rails_helper'

RSpec.describe CredentialImport, type: :model do
  it { should validate_presence_of(:file) }
  it { should validate_presence_of(:expiration) }
end
