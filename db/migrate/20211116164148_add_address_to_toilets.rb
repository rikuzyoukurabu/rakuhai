class AddAddressToToilets < ActiveRecord::Migration[5.2]
  def change
    add_column :toilets, :address, :string
    add_column :toilets, :longitude, :float
    add_column :toilets, :latitude, :float
  end
end
