class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  # Create task
  def new
    @new_task = Task.new
  end

  def show
    @task = Tasks.find(params[:id])
  end

  def create
    @new_task = Task.new(task_params)
    @new_task.save
    redirect_to task_path(@new_task)
  end

  # Update task
  def edit
    @task = Tasks.find(params[:id])
    @task.update(restaurant_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Tasks.find(params[:id])
    @task.destroy
  end
end
