class CredentialsController < ApplicationController
  before_action :authenticate_user!

  def index
    @credentials = Credential.all
  end
end
