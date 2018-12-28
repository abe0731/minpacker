json.extract! hotel, :id, :key, :name1, :name2, :name3, :map, :address, :tel, :mail, :url, :about1, :about2, :about3, :about4, :about5, :prefecture_id, :city_id, :station_id, :airport_id, :publish_flg, :stop_flg, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
