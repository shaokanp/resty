class AddProjectIdToResources < ActiveRecord::Migration
  def change
    add_column :resources, :project_id, :integer
  end
end
