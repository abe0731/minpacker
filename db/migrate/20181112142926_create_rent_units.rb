class CreateRentUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :rent_units do |t|
      t.string :name

      t.timestamps
    end
  end
end
