class PasswordRequestsController < ApplicationController
  def new
    @password_request = PasswordRequest.new
  end

  def create
    @password_request = PasswordRequest.new(password_request_params)
    if @password_request.save
      NotifierMailer.approval_needed(@password_request).deliver_now
      redirect_to root_url, notice: "Success!!!"
    else
      render :new
    end
  end

  def approve
    @password_request = PasswordRequest.find_by(id: params[:id], token: params[:token])

    if @password_request
      credential = Credential.available.first
      @password_request.update!(credential: credential) # Associate password request with a credential
      # Send the credential to the requestor via email
      # Mark as approved
      redirect_to root_url, notice: "Good job"
    else
      redirect_to root_url, alert: "This email is no longer valid"
    end

  end

  private

    def password_request_params
      params.require(:password_request).permit(:email)
    end
end
