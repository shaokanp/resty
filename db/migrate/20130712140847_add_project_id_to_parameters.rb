class AddProjectIdToParameters < ActiveRecord::Migration
  def change
    add_column :parameters, :project_id, :integer
  end
end
