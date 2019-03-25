class Bin < ApplicationRecord
  belongs_to :user, optional: true
end
