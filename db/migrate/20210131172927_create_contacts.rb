class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.integer :contact_type
      t.string :contact_value
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
