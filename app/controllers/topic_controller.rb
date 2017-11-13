class TopicController < ApplicationController
	def users
		if params[:topic].present?
			topic = TopicOfInterest.find_by(topic: params[:topic])
			@all_user_of_topic = topic.users.to_json(:root => false,
             :only => [:name,:phone,:email])
			render json: @all_user_of_topic
		else
			render json: {Status: :false}
		end
	end
end
