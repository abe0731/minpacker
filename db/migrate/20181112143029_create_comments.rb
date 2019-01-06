class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :hotel, foreign_key: true
      t.string :name
      t.string :comment

      t.timestamps
    end
  end
end
