class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text :name
      t.text :description
      t.integer :quantity
      t.decimal :unit_value
      t.string :picture_id
      t.integer :type_id
      t.integer :promo_id
      t.timestamps
    end
  end
end
