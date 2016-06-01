class TasksController < ApplicationController
   def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
     @task = Task.new(input_tasks_params)
    if @task.save
      redirect_to task_path(@task)
    else
      render "new"
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
     @task = Task.find(params[:id])
    @task.update(input_tasks_params)
     redirect_to task_path(@task)
  end

  def destroy
     @task = Task.find(params[:id])
    @task.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to tasks_path
  end

private

  def input_tasks_params
    params.require(:task).permit(:name, :value)
  end
end

