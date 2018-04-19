class Api::InstrumentsController < ApplicationController

	def index
		render json: Instrument.all
	end

	def show
	  instrument = Instrument.find(params[:id])
	  render json: instrument
	end
end