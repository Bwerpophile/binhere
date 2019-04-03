class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  def default_url(*args)
    ActionController::Base.helpers.asset_path("default_placeholder.jpg")
  end
  # Remove everything else
end
