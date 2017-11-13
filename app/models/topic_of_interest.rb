class TopicOfInterest < ApplicationRecord
	has_and_belongs_to_many :users, :dependent => :destroy
	validates :topic, presence: true, uniqueness: true
end
