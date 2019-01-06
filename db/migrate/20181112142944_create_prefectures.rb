class CreatePrefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :prefectures do |t|
      t.string :name1
      t.string :name2
      t.string :name3
      t.string :map

      t.timestamps
    end
  end
end
