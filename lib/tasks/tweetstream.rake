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
    task :english_stream => :environment do
      TweetStream::Client.new.locations(-74.264885, 40.490043, -73.757111, 40.884448) do |tweet|
        lat = tweet.attrs[:coordinates][:coordinates][1]
        lng = tweet.attrs[:coordinates][:coordinates][0]
        lang = tweet[:lang]

        if lang == "en"
          p tweet
        end
      end
    end

  desc "Tweets in other languages"
    task :foreign_stream => :environment do
      TweetStream::Client.new.locations(-74.264885, 40.490043, -73.757111, 40.884448) do |tweet|
        lat = tweet.attrs[:coordinates][:coordinates][1]
        lng = tweet.attrs[:coordinates][:coordinates][0]
        lang = tweet[:lang]

        if lang != "en"
          p tweet
        end
      end
    end
end
