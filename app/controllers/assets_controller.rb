class AssetsController < ApplicationController
  MAX_PAGINATION_LIMIT = 50

  def index
    @assets = Asset.order(taken_at: :desc).limit(result_limit).offset(params[:offset])

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

  private

  def result_limit
    [params.fetch(:limit, MAX_PAGINATION_LIMIT).to_i, MAX_PAGINATION_LIMIT].min
  end
end
