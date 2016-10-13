class PasswordRequest < ActiveRecord::Base
  has_secure_token

  belongs_to :credential
  validates :email, presence: true
end
