class Tweet < ActiveRecord::Base
  belongs_to :monstruo
  after_save :tipo_monstruo
  def tipo_monstruo
  	if self.monstruo.tweets.count >= 5
  		self.monstruo.critter_star = true
  		self.monstruo.save
  	end
  end
end
