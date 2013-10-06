namespace :tweetstream do
  require 'tweetstream'
   TweetStream.configure do |config|
        config.consumer_key       = 'Cvu1QicrLieQTnZVmN7Gw'
        config.consumer_secret    = 'sKx0Z17jNXrpcYyrJRutFFVlCa29ki7EAZPayaAks'
        config.oauth_token        = '50751153-tRwCp43uAIYYd63wMo2SYcDooW84CsxWpTgh6gvU0'
        config.oauth_token_secret = 'f40e8T68YYp3qGLGJM4FoxjcJipO0HVXYfkaINL68Dg'
        config.auth_method        = :oauth
    end


  desc "Tweets in English"
    task :tweets => :environment do
     TweetStream::Client.new.locations(-178.972778, -61.606396, 167.316284, 59.977005) do |tweet|
        lat = tweet.attrs[:coordinates][:coordinates][1]
        lng = tweet.attrs[:coordinates][:coordinates][0]
        lang = tweet[:lang]
        tweet = Tweet.create(lat: lat, lng: lng, lang: lang)
      end
    end


  # desc "Tweets in other languages"
  #   task :foreign_stream => :environment do
  #     TweetStream::Client.new.locations(-74.264885, 40.490043, -73.757111, 40.884448) do |tweet|
  #       tweet.attrs[:coordinates][:coordinates][1] = params[:lat]
  #       tweet.attrs[:coordinates][:coordinates][0] = params[:lng]
  #       tweet[:lang] = params[:lang]
  #       tweet = Tweet.create
  #     end
  #   end

        desc "Tweets in other languages"
    task :foreign_tweets => :environment do
      TweetStream::Client.new.locations(-74.264885, 40.490043, -73.757111, 40.884448) do |tweet|
        lat = tweet.attrs[:coordinates][:coordinates][1]
        lng = tweet.attrs[:coordinates][:coordinates][0]
        lang = tweet[:lang]
        tweet = Tweet.create(lat: lat, lng: lng, lang: lang)
      end
    end

    desc "hi"
    task :english_tweets => :environment do
      TweetStream::Client.new.locations(-74.264885, 40.490043, -73.757111, 40.884448) do |tweet|
        tweet_data = {
          lat: tweet.attrs[:coordinates][:coordinates][1],
          lng: tweet.attrs[:coordinates][:coordinates][0],
          lang: tweet[:lang] = params[:lang]
        }

        tweet = Tweet.create(tweet_data)
      end
    end
end
