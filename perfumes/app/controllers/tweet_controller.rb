require "rubygems"
require "twitter"

class TweetController < ApplicationController
  def user_page
	@tweet = Tweet.new
  end

  	def user_tweet
		@tweet = Tweet.new(params[:tweet])

		if @tweet.save then
			# Certain methods require authentication. To get your Twitter OAuth credentials,
			# register an app at http://dev.twitter.com/apps
			Twitter.configure do |config|
				config.consumer_key = '3fESILoN681FoPZcUqjXw'
				config.consumer_secret =  'ONsC7ChIW5k9CqQFRHlm9TfpLrhaLXKWrnlrd0k'
				config.oauth_token = '335864769-uAMeehCziahWPhoR6JDUsc0v4o2qcBOqqFUwO05n'
				config.oauth_token_secret = '1rionz2kEdfxJEXXocqW9GBrIuJwUInJOoSfNAwTNs'
			end

			# Initialize your Twitter client
			client = Twitter::Client.new

			# Post a status update
			client.update(@tweet.tweet_content)		
		end

		render action: "user_page", :notice => 'Tweet successfully posted'
	end
   
end
