class AddIdColonneToBins < ActiveRecord::Migration[5.2]
  def change
    add_column :bins, :id_colonne, :string
  end
end
