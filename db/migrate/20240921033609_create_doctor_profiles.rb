class CreateDoctorProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :doctor_profiles do |t|
      t.references :doctor, null: false, foreign_key: true
      t.string :names
      t.string :last_names
      t.references :identification_type, null: false, foreign_key: true
      t.integer :identification
      t.boolean :sex
      t.date :birthdate
      t.string :phone

      t.timestamps
    end
  end
end
