class MapController < ApplicationController

  def index
    @tweet = Tweet.first
    @lat = Tweet.first(params[:lat])
    @lng = Tweet.first(params[:lng])
    @lang = Tweet.first(params[:lang])
  end

  def tweets
    @tweets = Tweet.all
    respond_to do |format|
    format.html
    format.json {render json: @tweets}
    end
  end

end