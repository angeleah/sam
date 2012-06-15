class ClientsController < ApplicationController
  before_filter :find_client, :except => [:index, :create, :new]

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
   end
   
   def edit
   end
  
   def update
      if @client.update_attributes(params[:client])
        redirect_to client_path
      else 
        render "edit"  
     end
   end
    
  def destroy
    @client.destroy
    redirect_to clients_path
  end
  
  private
    def find_client
      @client = Client.find(params[:id])
    end
 end                                      