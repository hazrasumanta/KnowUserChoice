class SessionController < ApplicationController
	include AdminHelper
	#before_action :check_token, only: [:logout]
  #Creating session of a user
  def login
  	#checking in session 
  	user = User.find_by(email: params[:email])
  	if user and user.authenticate(params[:password])
  		#generating token for farther reference(like logout)
  		user.genarate_token()
  		#here updating user last login time
  		user.update_last_login_time()
  		session[:user_id] = user.id
  		user = user.to_json(:root => false,
             :only => [:name,:email,:phone,:last_sign_in_at,:token])
  		render json: user
  	else
  		render json: {status: :false,message: :wrong_email_id_or_password}
  	end
  end

  #logout user
  def logout
  	if check_token()
  		#removing token
  		@user_token.update_columns(:token=>nil)
  		render json: {status: :ok,message: :logout_successfully}
  	else
  		render json:  {status: :false,message: :user_authentication_failed}
  	end
  end

  
end
