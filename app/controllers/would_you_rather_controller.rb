class WouldYouRatherController < ApplicationController

  def new
  	@would_you_rather = WouldYouRather.new
  end
end
