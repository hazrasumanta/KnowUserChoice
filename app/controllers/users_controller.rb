class UsersController < ApplicationController
  include AdminHelper
  before_action :set_user, only: [:show, :update, :destroy]
  #before_action :check_token, only: [:topics]
  wrap_parameters :user, include: [:name, :password,:phone,:email, :password_confirmation]


  #getting user topics
  def topics
    if check_token()
      all_user_topic = @user_token.topic_of_interests
      all_user_topic = all_user_topic.to_json(:root => false,
             :only => [:id,:topic])
      render json: all_user_topic
    else
      render json:  {status: :false, message: :user_authentication_failed}
    end
  end

  # POST /users
  
  #add signup user
  def signup
     @user = User.new(user_params)

    if @user.save
      render json: {status: :ok,message: :user_created}
    else
      render json: {status: :false,message: :user_not_created}
    end
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:name, :phone, :email, :password, :password_confirmation, :last_sign_in_at)
  end
end
