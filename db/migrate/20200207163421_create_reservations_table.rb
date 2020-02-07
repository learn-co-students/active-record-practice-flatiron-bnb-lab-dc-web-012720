class CreateReservationsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t| 
      t.integer :host_id
      t.integer :guest_id 
    end 
  end
end
