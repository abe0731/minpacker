class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :key
      t.string :name1
      t.string :name2
      t.string :name3
      t.string :map
      t.string :address
      t.string :tel
      t.string :mail
      t.string :url
      t.text :about1
      t.text :about2
      t.text :about3
      t.text :about4
      t.text :about5
      t.references :prefecture, foreign_key: true
      t.references :city, foreign_key: true
      t.references :station, foreign_key: true
      t.references :airport, foreign_key: true
      t.integer :publish_flg
      t.integer :stop_flg

      t.timestamps
    end
  end
end
