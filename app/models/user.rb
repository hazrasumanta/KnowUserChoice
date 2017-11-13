class User < ApplicationRecord
  has_secure_password
  # validating user params
  validates :name, presence: true
  validates :email, presence: true,uniqueness: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates :phone, presence: true,uniqueness: true,length: { in: 10..12 }
  validates :password, :presence => true,
                       :length => {:within => 8..40},
                       :on => :create

   #method to update last login time
   def update_last_login_time()
   	self.update_columns(:last_sign_in_at => Time.now)
   end

   #token generation
   def genarate_token
   	if self.token.blank?
   		token = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
   		self.update_columns(:token => token)
   	else
   		return false
   	end
   end

end
