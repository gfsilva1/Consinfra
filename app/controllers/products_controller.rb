class ProductsController < ApplicationController
	def index
		@dufrio = Dufrio::V1::DufrioRepository.call
		@climario = Climario::V1::ClimarioRepository.call
		@poloar = Poloar::V1::PoloarRepository.call
		if params[:query].present?
      @dufrio = @dufrio.select { |key| key.to_s.include? params[:query].capitalize }
			@climario = @climario.select { |key| key.to_s.include? params[:query].capitalize }
			@poloar = @poloar.select { |key| key.to_s.include? params[:query].capitalize }
    end
	end
end
