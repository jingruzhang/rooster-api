class Api::ProductionsController < ApplicationController
	#skip_before_filter :verify_authenticity_token

	before_action :set_production, only: [:show, :update, :destroy]

	def index
		render json: Production.all
	end

	def show
	 	render json: @production
	end

	def create
		production = Production.new(production_params)
		if production.save
			render json: production
		else
			render json: production.errors
		end
	end

	def update
		if @production.update(production_params)
			render json: @production
		else
			render json: @production.errors
		end
	end

	def destroy
		@production.destroy
		render json: Production.all
	end

	private

	def production_params
		params.require(:production).permit(:name, :has_orchestra, :has_vocals, :pay_per_hour, :pay_per_call)
	end

	def set_production
		@production = Production.find(params[:id])
	end

end