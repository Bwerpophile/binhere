class Bin < ApplicationRecord
  belongs_to :user, optional: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  mount_uploader :photo, PhotoUploader
end
