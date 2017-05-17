class AddPictureToSumne < ActiveRecord::Migration[5.0]
  def change
    add_column :sumnes, :picture, :string
  end
end
