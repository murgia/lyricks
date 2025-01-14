class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation, :profile_pic)
  end

  def account_update_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation, :current_password, :profile_pic)
  end
end
