class Tweet < ActiveRecord::Base
  belongs_to :monstruo

  after_save :es_star
  def es_star
  	if self.monstruo.tweets.size > 5
  		self.monstruo.critter_star = true
  		self.monstruo.save
  	end 
  end
  
end
