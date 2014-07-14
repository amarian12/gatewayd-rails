class CreateRippleAddresses < ActiveRecord::Migration
  def change
    create_table :ripple_addresses do |t|
      t.boolean :managed
      t.string :address
      t.string :type
      t.integer :tag
      t.string :uid
      t.text :data

      t.timestamps
    end
  end
end
