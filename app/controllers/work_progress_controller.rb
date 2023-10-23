class WorkProgressController < ApplicationController
	def show
		@work_progress = WorkProgress.where(project_id: params[:project_id], supplier_id: params[:supplier_id])
	end

	def new
		@work_progress = WorkProgress.new
	end

	def create
		@work_progress = WorkProgress.new(params[:work_progress_params])
		@work_progress.save
		redirect_to root_path
	end

	def edit
		@work_progress = WorkProgress.find(params[:id])
	end

	def update
		@work_progress = WorkProgress.find(params[:id])
		@work_progress.update(work_progress_params_params)

		redirect_to root_path
	end
	

	private

	def work_progress_params
		params.require(:work_progress).permit(:total, :project_id, :supplier_id)
	end
end
