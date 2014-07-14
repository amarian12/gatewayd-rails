class CreateRippleTransactions < ActiveRecord::Migration
  def change
    create_table :ripple_transactions do |t|
      t.string :to_address
      t.string :from_address
      t.decimal :to_amount
      t.decimal :from_amount
      t.string :to_currency
      t.string :from_currency
      t.string :to_issuer
      t.string :from_issuer
      t.string :transaction_state
      t.string :transaction_hash
      t.string :state
      t.string :uid
      t.text :data

      t.timestamps
    end
  end
end
