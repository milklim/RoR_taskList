class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render 'tasks/index'
  end

  def create
    Task.create( task_create_params)
    redirect_to '/'
  end

  def update
    task = Task.find_by(id: params[:task][:id])
    if task
      task.update!( task_update_params)
      redirect_to '/'
    end

  end

  def edit
    @task = Task.find_by(id: params[:id])
    unless @task
      redirect_to '/'
    end
  end

  def delete
    task = Task.find_by(id: params[:id])
    if task
      task.destroy!
    end
    redirect_to '/'
  end

  def task_create_params
    params.require(:task).permit(:name, :description)
  end

  def task_update_params
    params.require(:task).permit(:name, :description)
  end
end
