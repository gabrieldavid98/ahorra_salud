class CreateMedicalRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_records do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.references :appointment, null: false, foreign_key: true
      t.string :disability
      t.string :allergies
      t.text :appointment_reason
      t.text :background
      t.text :analysis
      t.text :recommendations

      t.timestamps
    end
  end
end
