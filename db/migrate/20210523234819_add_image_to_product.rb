class AddImageToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :image, :string, null: false
  end
end
