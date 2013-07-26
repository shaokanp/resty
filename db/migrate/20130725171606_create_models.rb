class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name
      t.text :description
      t.integer :project_id

      t.timestamps
    end
  end
end
