module TokenAuthenticatable
  extend ActiveSupport::Concern

  API_TOKEN = "WEARETHECHAMPIONSMYFRIEND"

  included do
    before_action :authenticate!
  end

  private

  def authenticate!
    if params[:token] != API_TOKEN
      render json: { message: "Bad authentication token!" }, status: :unauthorized
    end
  end
end
