class Api::ProductionsController < ApplicationController

	def index
		render json: Production.all
	end

	def show
		production = Production.find(params[:id])
	 	render json: production
	end
end