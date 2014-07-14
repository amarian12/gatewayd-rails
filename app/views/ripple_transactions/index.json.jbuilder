json.array!(@ripple_transactions) do |ripple_transaction|
  json.extract! ripple_transaction, :id, :to_address, :from_address, :to_amount, :from_amount, :to_currency, :from_currency, :to_issuer, :from_issuer, :transaction_state, :transaction_hash, :state, :uid, :data
  json.url ripple_transaction_url(ripple_transaction, format: :json)
end
