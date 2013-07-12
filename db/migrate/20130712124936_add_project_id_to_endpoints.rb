class AddProjectIdToEndpoints < ActiveRecord::Migration
  def change
    add_column :endpoints, :project_id, :integer
  end
end
