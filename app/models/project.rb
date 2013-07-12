class Project < ActiveRecord::Base
	has_many :participants
	has_many :users, through: :participants
	has_many :resources, dependent: :destroy
	has_many :endpoints, dependent: :destroy
end
