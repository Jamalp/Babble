class MapController < ApplicationController

  def index
  end

  def tweets
    @tweets = Tweet.all
    # @lat = Tweet.(params[:lat])
    # @lng = Tweet(params[:lng])
    # @lang = Tweet(params[:lang])
    respond_to do |format|
    format.html
    format.json {render json: @tweets}
    end
  end
end