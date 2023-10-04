class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|

      t.string :status, null: false
      t.date :deadline, null: false
      t.references :user, null: false
      t.references :job, null: false

      t.timestamps
    end
  end
end
