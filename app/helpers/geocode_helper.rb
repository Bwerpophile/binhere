module GeocodeHelper
  def geocode(address)
    return if address.nil?
    lat = Geocoder.search(address).first.data["lat"]
    lon = Geocoder.search(address).first.data["lon"]

    [lon, lat]
  end
end
