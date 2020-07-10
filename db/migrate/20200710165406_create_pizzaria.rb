class CreatePizzaria < ActiveRecord::Migration[6.0]
  def change
    create_table :pizzaria do |t|
      t.string :name
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
