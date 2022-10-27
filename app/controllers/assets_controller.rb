class AssetsController < ApplicationController
  def index
    @assets = Asset.all

    render json: { assets: @assets }, status: :ok
  end

  def show
    @asset = Asset.where(id: params[:id]).first

    if @asset.present?
      render json: { asset: @asset }, status: :ok
    else
      render json: { error: "The asset with id #{params[:id]} does not exist." }, status: :unprocessable_entity
    end
  end
end
