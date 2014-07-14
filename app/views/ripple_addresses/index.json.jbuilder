json.array!(@ripple_addresses) do |ripple_address|
  json.extract! ripple_address, :id, :managed, :address, :type, :tag, :uid, :data
  json.url ripple_address_url(ripple_address, format: :json)
end
