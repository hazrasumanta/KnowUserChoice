class SessionController < ApplicationController

  #Creating session of a user
  def login
  	#checking in session 
  	user = User.find_by(email: params[:email])
  	if user and user.authenticate(params[:password])
  		#generating token for farther reference(like logout)
  		user.genarate_token()
  		#here updating user last login time
  		user.update_last_login_time()
  		user = user.to_json(:root => false,
             :only => [:name,:email,:phone,:last_sign_in_at,:token])
  		render json: user
  	else
  		render json: user.errors, status: :wrong_entry
  	end
  end

  #logout user
  def logout
  	#
  	puts "checking session #{params[:token]}"
  	user_token = User.find_by(token: params[:token])
  	if user_token
  		user_token.update_columns(:token=>nil)
  		render json: {status: :ok}
  	else
  		render json:  {status: :false}
  	end
  	
  end
end
