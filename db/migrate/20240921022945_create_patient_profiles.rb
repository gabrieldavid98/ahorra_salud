class CreatePatientProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_profiles do |t|
      t.references :patient, null: false, foreign_key: true
      t.string :names
      t.string :last_names
      t.references :identification_type, null: false, foreign_key: true
      t.integer :identification
      t.string :address
      t.string :phone
      t.boolean :sex
      t.date :birthdate

      t.timestamps
    end
  end
end
