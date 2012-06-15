require 'spec_helper'

describe NotesController do
  
  # login to http basic auth
    include AuthHelper
    before(:each) do
      http_login
    end
  
  describe "GET 'notes/new'" do
    
    before(:each) do
       client = Client.create!(:first_name => "Kelly", :last_name => "Zeba")
       get :new, :client_id => client.id
     end
      
    it "should render a notes form" do
      response.should be_success
      response.should render_template('notes/new')
    end
    
    it "should have a new note" do
      assigns[:note].should_not be_nil
    end
  end
       
   describe "POST 'create'" do
  
      it "should create a new note" do
         client = Client.create!(:first_name => "Kelly", :last_name => "Zeba")
         post :create, :client_id => client.id, :note => {:note => "Hello, this is a note"}
         note = client.notes.first
         Note.count.should == 1
         response.should redirect_to client_note_path(client, note)
       end
    end
   
    describe "GET 'show'" do
        
        it "should render a show page" do
          client = Client.create!(:first_name => "Kelly", :last_name => "Zeba")  
          note = Note.create(:note => "This is a note.")
          get :show, :client_id => client.id, :id => note.id
          response.should be_success
        end
      end
   
   describe "PUT 'update'" do
     
     it "should change the notes attributes" do
       client = Client.create!(:first_name => "Kelly", :last_name => "Zeba")
       note = Note.create!(:note => "THis is a note")
       note.update_attributes(:note => "I am changing the note")
       put :update, :client_id => client.id, :id => note.id
       response.should redirect_to client_note_path(client, note)
     end
   end
  
   describe "GET edit" do
     it "should render the edit form" do
       client = Client.create!(:first_name => "Kelly", :last_name => "Zeba")  
       note = Note.create(:note => "This is a note.")
       get :edit,:client_id => client.id, :id => note.id
       assigns[:note].should_not be_nil
       response.should be_success
     end
   end
   
   describe "DELETE 'destroy'" do
      
      it "should delete a note" do
        client = Client.create!(:first_name => "Kelly", :last_name => "Zeba")  
        note = Note.create(:note => "This is a note.")
        delete :destroy, :client_id => client.id, :id => note.id
        response.should redirect_to client_path(client)
      end
    end
end
