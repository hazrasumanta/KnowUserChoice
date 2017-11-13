class TopicOfInterestsUser < ApplicationRecord
  belongs_to :user
  belongs_to :topic_of_interest
end
