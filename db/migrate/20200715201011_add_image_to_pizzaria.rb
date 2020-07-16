class AddImageToPizzaria < ActiveRecord::Migration[6.0]
  def change
    add_column :pizzaria, :image, :binary
  end
end
