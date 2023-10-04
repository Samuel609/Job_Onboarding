class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|

      t.string :title, null: false
      t.string :category, null: false
      t.string :availability, null: false
      t.string :type, null: false
      t.string :description, null: false
      t.string :cv, null: false
      t.integer :lowest_salary, null: false
      t.integer :highest_salary, null: false
      t.string :criteria, null: false
      t.string :logo, null: false
      t.reference :contact_informations, null: false

      t.timestamps
    end
  end
end
