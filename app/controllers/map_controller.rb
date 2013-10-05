class MapController < ApplicationController

  def index
  end

  def tweets
    @tweets = Tweet.all
    @lat = Tweet(params[:lat])
    @lng = Tweet(params[:lng])
    @lang = Tweet(params[:lang])
    respond_to do |format|
<<<<<<< HEAD
    format.html
    format.json {render json: @tweets}
=======
      format.html
      format.json {render json: @tweets}
>>>>>>> f262969e7fb394c3652e8ffca6193d1a3b26a186
    end
  end
end