class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.new(tasks_params)
    @tasks.save
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @tasks.update(tasks_params)
    redirect_to tasks_path
  end

  def destroy
    @tasks.destroy
    redirect_to tasks_path
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @tasks = Task.find(params[:id])
  end
end
