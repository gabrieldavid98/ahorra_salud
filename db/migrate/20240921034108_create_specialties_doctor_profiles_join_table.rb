class CreateSpecialtiesDoctorProfilesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :specialties, :doctor_profiles,
      table_name: :doctor_specialties, column_options: {foreign_key: true}
  end
end
