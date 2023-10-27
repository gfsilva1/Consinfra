class SuppliersController < ApplicationController
	def index
		@suppliers = Supplier.all
	end

	def show
		@supplier = Supplier.find(params[:id])
	end

	def new
		#@project = Project.find(params[:project_id])
		@supplier = Supplier.new
	end

	def create
		@supplier = Supplier.new(supplier_params)
		#project = Project.find(params[:project_id])
		#@supplier.project_id = project.id
		@supplier.save

		redirect_to suppliers_path
	end

	private

	def supplier_params
		params.require(:supplier).permit(:name, :category)
	end

end
