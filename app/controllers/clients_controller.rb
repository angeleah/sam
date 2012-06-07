class ClientsController < ApplicationController
  http_basic_authenticate_with :name => "angeleah", :password => "Cl13nt5"
  def index
    @clients = Client.all
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
  
  def edit
    @client = Client.find(params[:id])
  end
  
  def update
    @client = Client.find(params[:id])
    if @client.update_attributes(params[:client])
      redirect_to client_path
    else 
      render "edit"  
    end
  end
  
  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_path
  end
  

end
                                      