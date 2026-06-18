class AllowNullDoctorIdInDoctorProfiles < ActiveRecord::Migration[8.0]
  def change
    change_column_null :doctor_profiles, :doctor_id, true
  end
end
