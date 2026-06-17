class CreateDoctorProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :doctor_profiles do |t|
      t.references :doctor, null: false, foreign_key: true
      t.integer :experience_years
      t.string :qualifications
      t.string :languages_spoken
      t.string :consultation_fee
      t.string :available_days
      t.time :available_from
      t.time :available_to
      t.string :profile_picture_url

      t.timestamps
    end
  end
end
