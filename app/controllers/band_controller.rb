class BandController < ApplicationController
	def new
		@band=Band.new
	end
	def create
		@band = Band.new(band_params)
		@band.save
	end
	def show 
		@band = Band.find(params[:id])
	end
	def band_params
      params.require(:band).permit(:frequency_lower, :frequency_upper)
  end
end
