class TasksController < ApplicationController

  before_filter :find_lead, only: [:new, :create, :edit, :update]

  def index
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new task_params

    if @task.save
      @client.add_task @task
    end

    redirect_to root_path
  end

  def edit
    @task = Task.find params[:id]
  end

  def update
    @task = Task.find params[:id]

    if @task.update_attributes task_params

    end

    redirect_to :back
  end
  private

  def task_params
    params.require(:task).permit(:user_id, :task_group_id, :name, :content, :deadline)
  end

  def find_lead
    @client = Client.find params[:lead_id]
  end

end

