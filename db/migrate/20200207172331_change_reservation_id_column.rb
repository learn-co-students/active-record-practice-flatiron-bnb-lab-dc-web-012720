class ChangeReservationIdColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :reservations, :host_id, :listing_id 
  end
end
