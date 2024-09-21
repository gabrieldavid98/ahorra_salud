class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :names
      t.string :last_names

      t.timestamps
    end
  end
end
