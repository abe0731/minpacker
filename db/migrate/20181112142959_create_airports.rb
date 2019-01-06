class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.string :name1
      t.string :name2
      t.string :name3
      t.references :prefecture, foreign_key: true
      t.references :city, foreign_key: true
      t.string :iata_cd
      t.string :map

      t.timestamps
    end
  end
end
