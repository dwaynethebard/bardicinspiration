class CreateType < ActiveRecord::Migration[5.2]
  def change
    create_table :types do |t|
      t.string :name
      t.string :description
      t.timestamps
    end

add_index("items","type_id")
  end
end


