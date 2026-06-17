class CreateAppointments < ActiveRecord::Migration[8.0]
  def change
    create_table :appointments do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.datetime :scheduled_at, null: false
      t.string :status, default: "pending"
      t.text :notes

      t.timestamps
    end
  end
end
