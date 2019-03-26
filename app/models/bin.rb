class Bin < ApplicationRecord
  belongs_to :user, optional: true
  mount_uploader :photo, PhotoUploader
end
