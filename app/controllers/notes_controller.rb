class NotesController < ApplicationController
  def index
    
  end
  
  def new
    @client = Client.find(params[:client_id])
    @note = Note.new
  end
  
  def create
    @client = Client.find(params[:client_id])
    if
      @client.notes.create!(params[:notes])
      redirect_to @client
    else
      render "new"
    end    
  end
  
  def show
    @client = Client.find(params[:client_id])
    @note = Note.find(params[:note]) 
  end
  

end


