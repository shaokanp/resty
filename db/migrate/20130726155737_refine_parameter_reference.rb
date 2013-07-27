class RefineParameterReference < ActiveRecord::Migration
  def up
    add_reference :parameters, :param_container, polymorphic: true
    remove_column :parameters, :endpoint_id
  end

  def down
    remove_column :parameters, :param_container_id
    remove_column :parameters, :param_container_type
    remove_reference :parameters, :param_container
    add_column :parameters, :endpoint_id, :integer
  end
end
