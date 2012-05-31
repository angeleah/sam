class ClientsController < ApplicationController
  def index
    
  end
  
  def create
    client = Client.create(params[:client])
    if client.save
      redirect_to client
    else 
      render "new"
    end 
  end
  
  def new
    @client = Client.new
  end
  
  def show
    @client = Client.find(params[:id])
  end
  
end
