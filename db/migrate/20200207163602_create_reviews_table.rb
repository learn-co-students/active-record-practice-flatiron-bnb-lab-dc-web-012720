class CreateReviewsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :tables do |t|
      t.integer :guest_id
      t.integer :listing_id
      t.integer :score
    end 
  end
end
