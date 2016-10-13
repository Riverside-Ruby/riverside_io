class MoveCredentialIdFromPasswordRequestsToCredentials < ActiveRecord::Migration
  def change
    remove_reference :password_requests, :credential
    add_reference :credentials, :password_request
  end
end
