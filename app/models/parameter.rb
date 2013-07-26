class Parameter < ActiveRecord::Base
	belongs_to :param_container, polymorphic: true
end
