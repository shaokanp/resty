class Resource < ActiveRecord::Base
	has_many :endpoints, dependent: :destroy
end
