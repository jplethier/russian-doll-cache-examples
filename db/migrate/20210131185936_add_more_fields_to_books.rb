class AddMoreFieldsToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :rating, :float
    add_column :books, :num_pages, :integer
    add_column :books, :publication_date, :date
  end
end
