class User < ActiveRecord::Base
	
	validates :email, presence: true, email: true
	validates_presence_of :name
	validates :number, length: { is: 10, wrong_length: "The number you entered is not a valid phone number"}
	
	has_many :requests
	
	def self.new_user_from_hash(hash)
		@user = User.new fb_id: hash[:uid],
			name: hash[:info][:name],
			email: hash[:info][:email],
			picture: hash[:info][:image] 
	end

	def self.find_from_hash(hash)
		User.find_by_fb_id(hash[:uid])
	end

	def admin?
		false
	end
end
