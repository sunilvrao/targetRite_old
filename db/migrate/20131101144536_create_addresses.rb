class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :add1
      t.string :add2
      t.string :city
      t.string :state
      t.string :zip
      t.string :address_type

      t.timestamps
    end
  end
end
