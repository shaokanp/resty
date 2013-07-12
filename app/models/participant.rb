class Participant < ActiveRecord::Base
	belongs_to :users
	belongs_to :projects
end
