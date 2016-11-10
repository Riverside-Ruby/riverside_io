require 'csv'
class CredentialImportsController < ApplicationController
  before_action :authenticate_user!

  def new
    @credential_import = CredentialImport.new
  end

  def create
    @credential_import = CredentialImport.new(credential_params)

    if @credential_import.import
      redirect_to root_path, notice: "Uploaded successful"
    else
      render :new
    end
  end

  private
    def credential_params
      params.require(:credential_import).permit(:file, :expiration)
    end
end
