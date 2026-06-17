class CreateHospitals < ActiveRecord::Migration[8.0]
  def change
    create_table :hospitals do |t|
      t.string :name, null: false
      t.string :address
      t.string :city
      t.string :phone
      t.string :email
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
