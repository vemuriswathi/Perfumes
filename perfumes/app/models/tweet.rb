class Tweet < ActiveRecord::Base
  validates :tweet_content, :length => { :minimum => 1, :maximum => 140, :message => 'Maximum characters 1024' }
  
  attr_accessible :tweet_content
end
