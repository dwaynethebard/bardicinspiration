class CreatePromos < ActiveRecord::Migration[5.2]
  def change
    create_table :promos do |t|
      t.string :name
      t.decimal :discount, :precision => 4, :scale => 2
      t.timestamps
    end
  end
end
