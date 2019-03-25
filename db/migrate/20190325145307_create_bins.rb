class CreateBins < ActiveRecord::Migration[5.2]
  def change
    create_table :bins do |t|
      t.string :name
      t.string :photo
      t.string :kind
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
