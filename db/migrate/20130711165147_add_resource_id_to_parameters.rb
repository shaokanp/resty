class AddResourceIdToParameters < ActiveRecord::Migration
  def change
    add_column :parameters, :resource_id, :integer
  end
end
