class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :Title
      t.text :Description
      t.string :Img_url
      t.string :Origin
      t.string :Type
      t.string :Size
      t.decimal :Price
      t.string :Company
      t.boolean# :Suit_veg

      t.timestamps null: false
    end
  end
end
