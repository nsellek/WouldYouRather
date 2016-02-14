class WouldYouRatherController < ApplicationController

	def index
	end

	def show
	end

  def new
  	@would_you_rather = WouldYouRather.new
  end

  def edit
  end

  def create
  	@would_you_rather = WouldYouRather.new(wyr_params)

  	respond_to do |format|
      if @would_you_rather.save
        format.html { redirect_to new_would_you_rather_path, notice: 'Option was successfully added into rotation.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
  end

  def destroy
  end

  private
  	def wyr_params
  		params.permit(:option)
  	end

end
