class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text :name
      t.text :description
      t.integer :quantity
      t.decimal :unit_value
      t.string :picture_id
      t.text :category
      t.integer :upload_id
      t.timestamps
    end
    add_index("items","upload_id")
  end
end
