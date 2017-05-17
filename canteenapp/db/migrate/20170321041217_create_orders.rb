class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.references :menu, foreign_key: true
      t.integer :quantity , :default => 1

      t.timestamps
    end
  end
end
