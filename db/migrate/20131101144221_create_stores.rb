class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
