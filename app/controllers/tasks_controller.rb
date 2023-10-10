class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :home

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @tasks = Task.all
    task = Task.new(task_params)
    if task.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to tasks_path, notice: "Task criada." }
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed, :photo)
  end
end
