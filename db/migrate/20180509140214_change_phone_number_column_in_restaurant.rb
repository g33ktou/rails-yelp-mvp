class ChangePhoneNumberColumnInRestaurant < ActiveRecord::Migration[5.1]
  def change
    rename_column :restaurants, :phone_umber, :phone_number
  end
end
