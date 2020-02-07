class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :host_id, :integer
    add_column :users, :guest_id, :integer
  end
end
