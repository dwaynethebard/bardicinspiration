class CreatePromo < ActiveRecord::Migration[5.2]
  def change
    create_table :promos do |t|
      t.string :name
      t.decimal :discount, :precision => 4, :scale => 2
    end
    add_index("items","promo_id")
  end
end
