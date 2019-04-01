class Review < ApplicationRecord
  belongs_to :bin
  belongs_to :user
end
