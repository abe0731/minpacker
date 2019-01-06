class CreateCounts < ActiveRecord::Migration[5.2]
  def change
    create_table :counts do |t|
      t.references :hotel, foreign_key: true
      t.string :access
      t.string :comment

      t.timestamps
    end
  end
end
