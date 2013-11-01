class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.belongs_to :role
      t.string :name
      t.boolean :complete, default: false, null: false

      t.timestamps
    end
    add_index :tasks, :role_id
  end
end