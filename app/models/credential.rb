class Credential < ActiveRecord::Base
  validates :username, presence: true
  validates :password, presence: true
  validates :expiration, presence: true


end
