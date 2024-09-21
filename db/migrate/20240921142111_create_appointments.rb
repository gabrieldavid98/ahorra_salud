class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.references :specialty, null: false, foreign_key: true
      t.references :health_center, null: false, foreign_key: true
      t.datetime :date_time

      t.timestamps
    end
  end
end
