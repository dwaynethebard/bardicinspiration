class AddAssociations < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :type_id, :integer
    add_column :items, :promo_id, :integer
    #Ex:- add_index("admin_users", "username")
  end
end
