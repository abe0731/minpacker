# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"
CSV.foreach("db/csv/rent_unit.csv") do |row|
  RentUnit.create(:name => row[0])
end
CSV.foreach("db/csv/stay_unit.csv") do |row|
  StayUnit.create(:name => row[0])
end
CSV.foreach("db/csv/prefecture.csv") do |row|
  Prefecture.create(:name1 => row[0], :name2 => row[1], :name3 => row[2])
end
CSV.foreach("db/csv/city.csv") do |row|
  City.create(:prefecture_id => row[0], :name1 => row[1])
end
CSV.foreach("db/csv/station.csv") do |row|
  Station.create(:name1 => row[0], :name2 => row[1], :prefecture_id => row[2], :city_id => row[3], :train_route1 => row[4], :train_route2 => row[5])
end
CSV.foreach("db/csv/airport.csv") do |row|
  Airport.create(:iata_cd => row[0], :name1 => row[1], :name2 => row[2], :name3 => row[3])
end
CSV.foreach("db/csv/hotel_okinawa.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :tel => row[2], :mail => row[3], :prefecture_id => 47)
end
CSV.foreach("db/csv/hotel_tokyo_tiyodaku.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :tel => row[2], :prefecture_id => 13, :city_id => 676)
end
CSV.foreach("db/csv/hotel_tokyo_tyuouku.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :tel => row[2], :prefecture_id => 13, :city_id => 677)
end
CSV.foreach("db/csv/hotel_tokyo_minatoku.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :tel => row[2], :prefecture_id => 13, :city_id => 678)
end
CSV.foreach("db/csv/hotel_tokyo_sinzyukuku.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :tel => row[2], :prefecture_id => 13, :city_id => 679)
end
CSV.foreach("db/csv/hotel_tokyo_bunkyoku.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :tel => row[2], :prefecture_id => 13, :city_id => 680)
end
CSV.foreach("db/csv/hotel_tokyo_taitoku.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :tel => row[2], :prefecture_id => 13, :city_id => 681)
end
CSV.foreach("db/csv/hotel_tokyo_sumidaku.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :prefecture_id => 13, :city_id => 682)
end
CSV.foreach("db/csv/hotel_tokyo_kotoku.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :tel => row[2], :prefecture_id => 13, :city_id => 683)
end
CSV.foreach("db/csv/hotel_tokyo_sinagawaku.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :tel => row[2], :prefecture_id => 13, :city_id => 684)
end
CSV.foreach("db/csv/hotel_tokyo_ootaku.csv") do |row|
  Hotel.create!(:address => row[0], :name1 => row[1], :prefecture_id => 13, :city_id => 686)
end
CSV.foreach("db/csv/hotel_tokyo_setagayaku.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :prefecture_id => 13, :city_id => 687)
end
CSV.foreach("db/csv/hotel_tokyo_sibuyaku.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :prefecture_id => 13, :city_id => 688)
end
CSV.foreach("db/csv/hotel_tokyo_nakanoku.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :prefecture_id => 13, :city_id => 689)
end
CSV.foreach("db/csv/hotel_tokyo_tosimaku.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :prefecture_id => 13, :city_id => 691)
end
CSV.foreach("db/csv/hotel_tokyo_kitaku.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :prefecture_id => 13, :city_id => 692)
end
CSV.foreach("db/csv/hotel_tokyo_itabasiku.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :prefecture_id => 13, :city_id => 694)
end
CSV.foreach("db/csv/hotel_tokyo_adatiku.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :prefecture_id => 13, :city_id => 696)
end
CSV.foreach("db/csv/hotel_tokyo_katusikaku.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :prefecture_id => 13, :city_id => 697)
end
CSV.foreach("db/csv/hotel_tokyo_edogawaku.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :prefecture_id => 13, :city_id => 698)
end
CSV.foreach("db/csv/hotel_kyoto_kyotosi.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :prefecture_id => 26)
end
CSV.foreach("db/csv/hotel_hukuoka.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :prefecture_id => 40)
end
CSV.foreach("db/csv/hotel_okinawa_nahasi.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :prefecture_id => 47, :city_id => 1895)
end
CSV.foreach("db/csv/hotel_okinawa2.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :prefecture_id => 47)
end
CSV.foreach("db/csv/hotel_oosaka_oosakasi.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :prefecture_id => 27)
end
CSV.foreach("db/csv/hotel_kanagawa_yokohamasi.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :prefecture_id => 14)
end
CSV.foreach("db/csv/hotel_hokkaidou.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :prefecture_id => 1)
end
CSV.foreach("db/csv/hotel_aiti_nagoyasi.csv") do |row|
  Hotel.create!(:name1 => row[0], :address => row[1], :prefecture_id => 23)
end



