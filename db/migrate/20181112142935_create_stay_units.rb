class CreateStayUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :stay_units do |t|
      t.string :name

      t.timestamps
    end
  end
end
