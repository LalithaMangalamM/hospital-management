class CreatePatients < ActiveRecord::Migration[8.0]
  def change
    create_table :patients do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email
      t.string :phone
      t.date :date_of_birth
      t.string :gender
      t.string :blood_group
      t.text :address
      t.string :city
      t.string :state
      t.string :pincode
      t.string :emergency_contact_name
      t.string :emergency_contact_phone
      t.boolean :active, default: true

      t.timestamps
    end

    add_index :patients, :email
  end
end
