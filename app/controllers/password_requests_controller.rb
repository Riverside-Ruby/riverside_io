class PasswordRequestsController < ApplicationController
  def new
    @password_request = PasswordRequest.new
  end

  def create
    @password_request = PasswordRequest.new(password_request_params)
    if @password_request.save
      redirect_to root_url, notice: "Success!!!"
    else
      render :new
    end
  end

  def index
  end

  private

    def password_request_params
      params.require(:password_request).permit(:email)
    end
end
