 class NotesController < ApplicationController
  http_basic_authenticate_with :name => "angeleah", :password => "Cl13nt5"
  before_filter :find_client
  before_filter :find_note, :except => [:new, :create]
   
  def new
    @note = @client.notes.new
  end
  
  def create
      if
        @note = @client.notes.create!(params[:note])
        redirect_to client_note_path(@client, @note)
      else
        render "new"
      end
    end
  
  def show
  end
  
  def edit
  end
  
  def update
     if @note.update_attributes(params[:note])
       redirect_to client_note_path
     else
        render "edit"
     end
   end
   
   def destroy
     @note.destroy
     redirect_to client_path(@client)
   end
   
   private
    def find_client
      @client = Client.find(params[:client_id]) 
    end
    
    def find_note
      @note = Note.find(params[:id])
    end
 end
