class CreateEndpoints < ActiveRecord::Migration
  def change
    create_table :endpoints do |t|
      t.text :description
      t.string :method_type
      t.string :url
      t.text :detail
      t.integer :resource_id

      t.timestamps
    end
  end
end
