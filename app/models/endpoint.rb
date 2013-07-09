class Endpoint < ActiveRecord::Base
	belongs_to :resource
	has_many :parameters, dependent: :destroy
end
