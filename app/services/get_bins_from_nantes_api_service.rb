require 'json'
require 'open-uri'

class GetBinsFromNantesAPIService
  def call
    url = 'https://data.nantesmetropole.fr/api/records/1.0/search/?dataset=244400404_colonnes-aeriennes-nantes-metropole&rows=15&facet=type_dechets&facet=quartier&facet=pole_nm'
    bins_serialized = open(url).read
    bins_hash = JSON.parse(bins_serialized)
    bins_hash["records"].each do |bin|
      unless Bin.find_by(id_colonne: bin["fields"]["id_colonne"])
        bin = Bin.new(
          id_colonne: bin["fields"]["id_colonne"],
          kind: formatted_kind(bin["fields"]["type_dechets"]),
          latitude: bin["fields"]["location"].first,
          longitude: bin["fields"]["location"].last,
          address: formatted_address(bin["fields"]["voie"], bin["fields"]["code_postal"], bin["fields"]["commune"])
        )
        bin.save
      end
    end
  end

  private

  def formatted_address(street, zipcode, city)
    "#{street}, #{zipcode} #{city.capitalize}"
  end

  def formatted_kind(kind)
    if kind == "papiercarton"
      kind = "carton"
    elsif kind == "Emb. ménager"
      kind = "menager"
    end
    return kind
  end
end
