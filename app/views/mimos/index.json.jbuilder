json.array!(@mimos) do |mimo|
  json.extract! mimo, :id, :title, :case, :description, :race, :size, :city, :country, :state, :street, :coordinates, :name, :color1, :color2, :gender, :age
  json.url mimo_url(mimo, format: :json)
end
