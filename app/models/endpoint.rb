class Endpoint < ActiveRecord::Base
	belongs_to :resource
	belongs_to :project
  has_many :parameters, as: :param_container, dependent: :destroy
end
