# frozen_string_literal: true

class FarmerUsers::SessionsController < Devise::SessionsController
  before_action :reject_farmer_user, only: [:create]
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  protected
  def reject_farmer_user
    @farmer_user = FarmerUser.find_by(email: params[:farmer_user][:email].downcase)
    if @farmer_user
    if (@farmer_user.valid_password?(params[:farmer_user][:password]) && !@farmer_user.is_active)
      flash[:notice] = "退会済みです。新たにアカウントを作成してください。"
      redirect_to new_farmer_user_registration_path
    end
    end
  end
end
