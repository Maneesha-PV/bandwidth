class WelcomeController < ApplicationController
	def index
		if current_user
			redirect_to new_band_path
		end
	end
end
