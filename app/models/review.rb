class Review < ApplicationRecord
  belongs_to :user
  belongs_to :bin
  validates :name, presence: true
  validates :description, presence: true
end
