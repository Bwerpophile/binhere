class AddReviewToSeeds < ActiveRecord::Migration[5.2]
  def change
    add_column :bins, :reviews, :text
  end
end
