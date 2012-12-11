class TweetController < ApplicationController
  def user_page
	@tweet = Tweet.new
  end

  	def user_tweet
		require "rubygems"
		require "twitter"

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
		client.update("I just posted a status update via the Twitter Ruby Gem !")
		redirect_to request.referer, :notice => 'Tweet successfully posted'
	end
   
end
