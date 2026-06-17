class CreateDoctors < ActiveRecord::Migration[8.0]
  def change
    create_table :doctors do |t|
      t.references :hospital, null: false, foreign_key: true
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :phone
      t.string :specialization
      t.string :license_number
      t.boolean :active, default: true

      t.timestamps
    end

    add_index :doctors, :email, unique: true
    add_index :doctors, :license_number, unique: true
  end
end
