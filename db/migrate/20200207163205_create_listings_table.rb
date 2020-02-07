class CreateListingsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t| 
      t.string :name 
      t.integer :neighborhood_id
      t.integer :host_id
    end 
  end
end
