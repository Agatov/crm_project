class ClientsController < ApplicationController

  before_filter :authenticate_user!
  before_filter :find_lead, only: [:edit, :update, :change_status, :destroy]


  # GET /leads
  def index
    if params[:status_id]
      @clients = current_landing.clients.with_status params[:status_id]
    else
      @clients = Client.order(:id)
    end
  end

  def show
    @client = Client.find params[:id]
  end

  def new
    @client = Client.new
  end

  def create
    @client = current_landing.clients.build lead_params

    if @client.save
      redirect_to leads_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @client.update_attributes lead_params
      redirect_to lead_path(@client)
    else
      render :edit
    end
  end

  def change_status
    @status = Status.find params[:status_id]
    @client.change_status @status
    redirect_to :back
  end

  def destroy
    @client.destroy
    redirect_to leads_path
  end

  private

  def find_lead
    @client = Client.find params[:id]
  end

  def lead_params
    params.require(:client).permit(:name, :phone, :email, :status_id)
  end

end
