class User < ApplicationRecord
# at creation of new user, the email field must be filled out and address must be unique 
	validates :email, presence: { message: 'must be present' }
	validates :email, uniqueness: { message: 'is already taken' }

	has_many :posts, dependent: :destroy #remove a users posts if account is deleted
	has_many :friends, through: :user_friends
	has_many :user_friends
	has_many :comments

	scope :no_password, -> {
		where('password IS ?', nil)
	}	
end
