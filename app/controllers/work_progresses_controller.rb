class WorkProgressesController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @supplier = Supplier.find(params[:supplier_id])
    @work_progress = WorkProgress.new
  end

  def create 
    @work_progress = WorkProgress.new(work_progress_params)
		project = Project.find(params[:project_id])
    supplier = Supplier.find(params[:supplier_id])
		@work_progress.project_id = project.id
    @work_progress.supplier_id = supplier.id
		@work_progress.save

		redirect_to projects_path
  end

  def edit
    @work_progress = WorkProgress.find(params[:id])
  end

  def update
    @work_progress = WorkProgress.find(params[:id])
    @work_progress.update(work_progress_params)

    redirect_to project_path(@work_progress.project.id)
  end

  private

	def work_progress_params
		params.require(:work_progress).permit(:total)
	end
end
