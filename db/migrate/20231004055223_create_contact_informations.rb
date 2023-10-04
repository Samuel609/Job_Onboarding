class CreateContactInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_informations do |t|
      t.string :country, null: false
      t.string :city, null: false
      t.string :subcity, null: false
      t.integer :phone_number, null: false

      t.timestamps
    end
  end
end
