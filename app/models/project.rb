class Project < ActiveRecord::Base
	has_many :resources, dependent: :destroy
	has_many :endpoints, dependent: :destroy

	#def to_param
	#	"#{name.parameterize}"
	#end

end
