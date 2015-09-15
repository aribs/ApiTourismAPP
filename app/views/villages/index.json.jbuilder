json.array!(@villages) do |village|
  json.extract! village, :id, :name, :info_text, :latitude, :longitude, :photo1, :photo2, :photo3, :photo4, :phone_municipality, :phone_info_tourism
  json.url village_url(village, format: :json)
end
