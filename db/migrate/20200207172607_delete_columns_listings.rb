class DeleteColumnsListings < ActiveRecord::Migration[5.0]
  def change
    remove_column :listings, :host, :string 
    remove_column :listings, :neighborhood, :string
  end
end
