class ChangeTablesNameToReviews < ActiveRecord::Migration[5.0]
  def change
    rename_table('tables', 'reviews')
  end
end
