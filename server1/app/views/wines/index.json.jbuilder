json.array!(@wines) do |wine|
  json.extract! wine, :id, :Title, :Description, :Img_url, :Origin, :Type, :Size, :Price, :Company, :Suit_veg
  json.url wine_url(wine, format: :json)
end
