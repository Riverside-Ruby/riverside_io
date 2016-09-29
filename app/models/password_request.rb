class PasswordRequest < ActiveRecord::Base
  belongs_to :credential
  validates :email, presence: true
end
