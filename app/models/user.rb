class User < ActiveRecord::Base
	has_many :participants
	has_many :projects, through: :participants
end
