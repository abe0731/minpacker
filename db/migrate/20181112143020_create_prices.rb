class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.references :hotel, foreign_key: true
      t.text :title
      t.integer :quantity_rent
      t.references :rent_unit, foreign_key: true
      t.integer :quantity_stay
      t.references :stay_unit, foreign_key: true
      t.integer :money

      t.timestamps
    end
  end
end
