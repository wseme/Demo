json.array!(@cars) do |car|
  json.extract! car, :name, :description, :email, :isForSale, :isPrivateParty, :price, :location, :postDate
  json.url car_url(car, format: :json)
end
