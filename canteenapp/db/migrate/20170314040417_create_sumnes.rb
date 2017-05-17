class CreateSumnes < ActiveRecord::Migration[5.0]
  def change
    create_table :sumnes do |t|
      t.string :name
      t.string :price
      t.text :ingredients

      t.timestamps
    end
  end
end
