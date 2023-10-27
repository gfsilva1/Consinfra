class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @suppliers = Supplier.all
  end

  def show
    @project = Project.find(params[:id])
  end

end
