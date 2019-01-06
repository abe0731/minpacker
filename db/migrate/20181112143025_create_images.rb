class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :hotel, foreign_key: true
      t.string :img_type
      t.string :img
      t.text :description

      t.timestamps
    end
  end
end
