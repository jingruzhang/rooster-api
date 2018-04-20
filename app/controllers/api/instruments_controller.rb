class Api::InstrumentsController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def index
		render json: Instrument.all
	end

	def show
	  instrument = Instrument.find(params[:id])
	  render json: instrument
	end

	def create
		instrument = Instrument.new(instrument_params)
		if instrument.save
			head 200
		else
			head 500
		end
	end

	private
	def instrument_params
		params.require(:instrument).permit(:position, :calls, :doubling, :principle, :concertmaster_principle_doubling, :fee)
	end
end