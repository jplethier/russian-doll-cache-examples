class AddPublisherToBooks < ActiveRecord::Migration[6.0]
  def change
    add_reference :books, :publisher, null: false, foreign_key: true
  end
end
