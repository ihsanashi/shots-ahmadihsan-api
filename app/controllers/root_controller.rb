class RootController < ApplicationController
  def index
    render json: { message: "Well hello there! You seem a bit lost. There is no resources for display here. Perhaps start with '/feed'." }, status: :ok
  end
end
