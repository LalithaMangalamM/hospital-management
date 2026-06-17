class CreateAppointments < ActiveRecord::Migration[8.0]
  def change
    create_table :appointments do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.datetime :scheduled_at, null: false
      t.integer :duration_minutes, default: 30
      t.string :status, default: "pending"
      t.string :appointment_type
      t.text :notes
      t.text :diagnosis
      t.text :prescription
      t.decimal :fee, precision: 10, scale: 2

      t.timestamps
    end

    add_index :appointments, :scheduled_at
    add_index :appointments, :status
  end
end
