class StatusesController < ApplicationController

  before_filter :find_status, only: [:edit, :update, :destroy]

  def index
    @statuses = current_landing.statuses
  end

  def new
    @status = Status.new
  end

  def create
    @status = current_landing.statuses.build status_params

    if @status.save
      redirect_to statuses_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @status.update_attributes status_params
      redirect_to statuses_path
    else
      render :edit
    end
  end

  def destroy
    @status.destroy
    redirect_to statuses_path
  end

  private

  def status_params
    params.require(:status).permit(:name)
  end

  def find_status
    @status = Status.find params[:id]
  end
end
