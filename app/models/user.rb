class User < ActiveRecord::Base
	has_many :videos
	acts_as_voter
	has_secure_password
	validates :email, presence: true, uniqueness: true
end
