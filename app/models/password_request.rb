class PasswordRequest < ActiveRecord::Base
  has_secure_token

  has_one :credential
  validates :email, presence: true
end
