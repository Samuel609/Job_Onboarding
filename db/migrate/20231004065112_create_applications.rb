class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|

      t.string :status, null: false
      t.date :deadline, null: false
      t.references :users, null: false
      t.references :jobs, null: false

      t.timestamps
    end
  end
end
