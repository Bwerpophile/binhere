class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :description
      t.date :date
      t.references :bin, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
