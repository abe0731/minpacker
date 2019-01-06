class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name1
      t.string :name2
      t.string :name3
      t.references :prefecture, foreign_key: true
      t.string :map

      t.timestamps
    end
  end
end
