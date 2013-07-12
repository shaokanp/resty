class RemoveResourceIdFromParameters < ActiveRecord::Migration
  def change
    remove_column :parameters, :resource_id
  end
end
