module AdminHelper
#checking token
  def check_token
  	@user_token = User.find_by(token: params[:token])
  	puts "------------> line no 5 #{params[:token]}"
  	if @user_token.blank?
  	puts "------------> line no 7 #{params[:token]}"
  		return false
  	else
  		return @user_token
  	end
  end
end