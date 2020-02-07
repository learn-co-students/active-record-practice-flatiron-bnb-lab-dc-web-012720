class AddColumnsReview < ActiveRecord::Migration[5.0]
  def change
    add_column :tables, :description, :text
    rename_column :tables, :score, :rating 
  end
end