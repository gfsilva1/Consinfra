class ProductsController < ApplicationController
	def index
  	@products = Dufrio::V1::DufrioRepository.call
	end
end
