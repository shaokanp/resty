class Project < ActiveRecord::Base
	has_many :resources, dependent: :destroy
	has_many :endpoints, dependent: :destroy
  has_many :models, dependent: :destroy

	#def to_param
	#	"#{name.parameterize}"
	#end

end
