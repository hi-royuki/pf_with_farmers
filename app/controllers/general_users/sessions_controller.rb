# frozen_string_literal: true

class GeneralUsers::SessionsController < Devise::SessionsController
  before_action :reject_general_user, only: [:create]

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
   def reject_general_user
    @general_user = GeneralUser.find_by(email: params[:general_user][:email].downcase)
    if @general_user
     if (@general_user.valid_password?(params[:general_user][:password]) && !@general_user.is_active)
      flash[:error] = "退会済みです。新たにアカウントを作成してください。"
      redirect_to new_general_user_registration_path
     else
      flash[:error] = "必須項目を入力してください。"
     end
    end
   end
end
