class CreateActions < ActiveRecord::Migration[5.0]
  def change
    create_table :actions do |t|
      t.string  :action_type, null: false
      t.string  :action_option
      t.string  :user_type
      t.integer :user_id
      t.string  :note_type
      t.integer :note_id
      t.string  :target_type
      t.integer :target_id

      t.timestamps
    end

    add_index :actions, [:user_type, :user_id, :action_type]
    add_index :actions, [:target_type, :target_id, :action_type]
    add_index :actions, [:note_type, :note_id, :action_type]
    add_index :actions, :action_type, using: :btree
    add_index :actions, :user_type,   using: :btree
    add_index :actions, :target_type, using: :btree
    add_index :actions, :note_type,   using: :btree
  end
end
