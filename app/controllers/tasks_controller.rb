class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :delete]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to task_path(@task)
  end

  def edit
  end

  def update
    @task.completed = params['flag'] == 'true'
    @task.update(task_params)
    redirect_to tasks_path
  end

  def delete
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params['id'])
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
