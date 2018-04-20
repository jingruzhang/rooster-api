class Api::ProductionsController < ApplicationController
	#skip_before_filter :verify_authenticity_token

	def index
		render json: Production.all
	end

	def show
		production = Production.find(params[:id])
	 	render json: production
	end

	def create
		production = Production.new(production_params)
		if production.save
			render json: production
		else
			render json: production.errors
		end
	end

	private
	def production_params
		params.require(:production).permit(:name, :has_orchestra, :has_vocals, :pay_per_hour, :pay_per_call)
	end
end