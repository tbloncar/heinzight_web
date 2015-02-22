class Api::DataSyncsController < ApplicationController
  include TokenAuthenticatable

  def sync
    if !(version = params[:version])
      render json: { message: "Sync version required." }, status: :unprocessable_entity
    else
      status = DataSyncStatus.first

      if status.version > version.to_i
        render json: {
          message: "Need sync.",
          version: status.version,
          data: ActiveModel::ArraySerializer.new(Location.all, each_serializer: LocationSerializer)
        }, status: :ok
      else
        render json: { message: "Up to date!" }, status: :ok
      end
    end
  end
end
