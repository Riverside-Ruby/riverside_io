class Credential < ActiveRecord::Base
  belongs_to :password_request

  validates :username, presence: true
  validates :password, presence: true
  validates :expiration, presence: true

  scope :available, -> { where("expiration >= ?", 1.day.from_now).where(password_request: nil) }

  attr_encrypted :password, key: ENV["CREDENTIAL_KEY"] || "development-key"
end
