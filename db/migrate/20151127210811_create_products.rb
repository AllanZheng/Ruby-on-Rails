class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :img_url
      t.decimal :price, precision:8, scale:2
      t.string :size

      t.timestamps
    end
  end
end
