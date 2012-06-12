require 'spec_helper'

describe NotesController do
  
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
       
   #describe "POST 'create'" do
  
    #   it "should create a new note" do
    #      client = Client.create!(:first_name => "Kelly", :last_name => "Zeba")
    #      post :create, :client_id => client.id, :note => {:note => "Hello, this is a note"}
    #      Note.count.should == 1
    #      response.should redirect_to('notes/show')
    #    end
    # end
   
   # describe "GET 'show'" do
   #   
   #   it "should render a show page" do
   #     client = Client.create!(:first_name => "Kelly", :last_name => "Zeba")
   #     note = Note.create!(:note => "THis is a note.")
   #     get :show, :note => note
   #     response.should be_success
   #     assigns[:note].should == note
   #   end
   # end
   
   # describe "GET 'index'" do
   #   
   #   it "should render an index page" do
   #     
   #   end
   #end
   
   # describe "PUT 'update'" do
   #   
   #   it "should change the notes attributes" do
   #     note = Note.create!(:note => "THis is a note")
   #     note.update_attribute(:note => "I am changing the note")
   #     put :update,:id => note.id
   #     get :show,:id => note.id
   #     response.should be_success
   #   end
   # end
   # 
   # describe "GET edit" do
   #   
   #   it "should render the edit form" do
   #     
   #   end
   # end
   # 
   # describe "DELETE 'destroy'" do
   #   
   #   it "should delete a note" do
   #     
   #   end
   # end
   # 
   
end
