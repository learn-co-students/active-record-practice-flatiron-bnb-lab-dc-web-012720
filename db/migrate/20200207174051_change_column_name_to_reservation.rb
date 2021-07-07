class ChangeColumnNameToReservation < ActiveRecord::Migration[5.0]
  def change
    rename_column :reviews, :listing_id, :reservation_id
  end
end
