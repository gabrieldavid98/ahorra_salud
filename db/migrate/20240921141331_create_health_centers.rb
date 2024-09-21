class CreateHealthCenters < ActiveRecord::Migration[7.0]
  def change
    create_table :health_centers do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
