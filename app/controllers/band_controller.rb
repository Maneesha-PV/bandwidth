class BandController < ApplicationController
	def new
		@band=Band.new
	end
	def create
		@band = Band.new(band_params)
		#if if_overlapping_exist
			if @band.save 
				render plain: " Successfully allocated"
			else
				#redirect_to :back, notice:@band.errors
				render plain: " Band is already in use. Choose another band"
			end
	end
	def show 
		@band = Band.find(params[:id])
	end
	def band_params
      params.require(:band).permit(:frequency_lower, :frequency_upper)
  end
  private
=begin
  def if_overlapping_exist
	  @bands = Band.all
	  @bands.each do |a|
	  	if a.frequency_upper>=params[:band][:frequency_lower].to_i
	  		return false
	  	end
	  end
	  return true
  end
=end
end
