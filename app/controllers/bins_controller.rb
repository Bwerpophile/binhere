class BinsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    if params[:bin_type].present?
      @bins = Bin.where(kind: params[:bin_type])
    else
      redirect_to root_path
    end
  end

  def show
    @bin = Bin.find(params[:id])
  end

  def bin_kind
    case bin_type
      when bin.king == "verre"
        "glass_color"
      when bin_kind == "papier"
        "paper_color"
      when bin_kind == "plastique"
        "plastique_color"
      when bin_kind == "menager"
        "menager_color"
      end
  end

  private
  def bin_params
    params.require(:bin).permit(:name, :id, :address, :photo, :bin_type)
  end
end

#   def fetch_github_user_data(username)
#   # 1. on construit l'url à partir du username envoyé à la methode
#   custom_url = "https://api.github.com/users/#{username}"
#   # 2. on récupère la réponse de l'API au format JSON
#   json_response    = open(custom_url).read
#   # 3. on parse le json en un format utilisable par Ruby (hash)
#   user_github_data = JSON.parse(json_response)

#   # 4. la methode retourne un hash ne contenant que les datas qui nous intéressent
#   return {
#     login:              user_github_data["login"],
#     avatar_url:         user_github_data["avatar_url"],
#     biography:          user_github_data["bio"], # => pas d'obligation d'avoir le même naming
#     name:               user_github_data["name"],
#     public_repos_count: user_github_data["public_repos"] # => pas d'obligation d'avoir le même naming
#   }


# end
