class AddNumberOfSeatsToBoats < ActiveRecord::Migration[7.0]
  def change
    add_column :boats, :number_of_people, :integer
  end
end
