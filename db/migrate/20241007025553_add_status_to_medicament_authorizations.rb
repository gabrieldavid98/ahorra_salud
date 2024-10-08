class AddStatusToMedicamentAuthorizations < ActiveRecord::Migration[7.0]
  def change
    add_column :medicament_authorizations, :status, :integer, default: 0
  end
end
