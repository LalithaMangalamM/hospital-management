class CreatePatients < ActiveRecord::Migration[8.0]
  def change
    create_table :patients do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email
      t.string :phone
      t.date :date_of_birth
      t.string :gender
      t.text :address
      t.string :city
      t.string :state

      t.timestamps
    end

  end
end
