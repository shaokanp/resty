class CreateParameters < ActiveRecord::Migration
  def change
    create_table :parameters do |t|
      t.string :name
      t.boolean :optional
      t.string :example_value
      t.integer :endpoint_id

      t.timestamps
    end
  end
end
