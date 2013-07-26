class Model < ActiveRecord::Base
  belongs_to :project
  has_many :parameters, dependent: :destroy
end
