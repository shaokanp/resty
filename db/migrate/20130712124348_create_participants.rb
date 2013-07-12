class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
    add_index :participants, :user_id
    add_index :participants, :project_id
  end
end
