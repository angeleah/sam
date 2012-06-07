class NotesController < ApplicationController
  def index
    
  end
  
  def new
    @client = Client.find(params[:client_id])
    @note = @client.notes.new
  end
  
  def create
    @client = Client.find(params[:client_id])
    if
      @client.notes.create!(params[:note])
      redirect_to @client
    else
      render "new"
    end    
  end
  
  def show
    @client = Client.find(params[:client_id])
    @note = Note.find(params[:id])
  end
  
  def edit
    @client = Client.find(params[:client_id])
    @note = Note.find(params[:id])
  end
  
  def update
    @client = Client.find(params[:client_id])
    @note = Note.find(params[:id])
    if @note.update_attributes(params[:note])
      redirect_to client_note_path
    else
       render "edit"
    end
  end
  
   def destroy
     @client = Client.find(params[:client_id])
     @note = Note.find(params[:id])
     @note.destroy
     redirect_to client_path
   end

end


