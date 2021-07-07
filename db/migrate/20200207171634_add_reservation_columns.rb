class AddReservationColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :checkin, :datetime
    add_column :reservations, :checkout, :datetime
    
  end
end


  # belongs to a guest (FAILED - 6)
  # belongs to a listing (FAILED - 7)