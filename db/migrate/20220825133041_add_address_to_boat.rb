class AddAddressToBoat < ActiveRecord::Migration[7.0]
  def change
    add_column :boats, :address, :string
  end
end
