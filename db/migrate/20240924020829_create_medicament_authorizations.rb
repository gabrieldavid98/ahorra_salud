class CreateMedicamentAuthorizations < ActiveRecord::Migration[7.0]
  def change
    create_table :medicament_authorizations do |t|
      t.references :medical_record, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.references :appointment, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.string :name
      t.integer :quantity
      t.integer :periodicity

      t.timestamps
    end
  end
end
