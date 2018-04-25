class Api::InstrumentsController < Api::ApiController
	before_action :set_instrument, only: [:show, :update, :destroy]

	def index
		render json: Instrument.all
	end

	def show
	  render json: @instrument
	end

	def create
		instrument = Instrument.new(instrument_params)
		if instrument.save
			render json: instrument
		else
			render json: instrument.errors
		end
	end

	def update
		if @instrument.update(instrument_params)
			render json: @instrument
		else
			render json: @instrument.errors
		end
	end

	def destroy
		@instrument.destroy
		render json: Instrument.all
	end

	private

	def instrument_params
		params.require(:instrument).permit(:position, :calls, :doubling, :principle, :concertmaster_principle_doubling, :fee)
	end

	def set_instrument
		@instrument = Instrument.find(params[:id])
	end

end