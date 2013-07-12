class Resource < ActiveRecord::Base
	has_many :endpoints, dependent: :destroy
	belongs_to :project
end
