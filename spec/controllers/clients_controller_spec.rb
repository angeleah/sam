require 'spec_helper'

describe ClientsController do
  
  # login to http basic auth
    include AuthHelper
    before(:each) do
      http_login
    end
  
  describe "POST 'create'" do
  
    it "should create a new client" do
      post :create, :client => {:first_name => "Kelly", :last_name => "Zeba"}
      Client.count.should == 1
      Client.first.first_name.should == "Kelly"
      Client.first.last_name.should == "Zeba"
      response.should redirect_to (Client.first)
    end
    
    it "should not create a client without a last name" do
      post :create, :client => {:first_name => "Kelly", :last_name => ""}
      Client.count.should == 0
      response.should render_template("new")
    end
  end
  
  describe "GET 'new'" do
    
    it "should render a form" do
      get :new
      response.should be_success
      response.should render_template('new')
    end
    
    it "should have a new client" do
      get :new
      assigns[:client].should_not be_nil
    end
  end
  
  describe "GET 'show'" do
    
   it "should render a show page" do
     client = Client.create!(:first_name => "Kelly", :last_name => "Zeba")
     get :show,:id => client.id
     response.should be_success
     assigns[:client].id.should == client.id
    end
  end
  
  describe "GET index" do
     it "should render an index page" do
       clients = Client.all
       get :index
       response.should be_success
       assigns[:clients].should == clients
     end
  end
  
  describe "PUT 'update'" do
    it "should change the clients attributes" do
      client = Client.create!(:first_name => "Kelly", :last_name => "Zeba")
      client.update_attributes(:first_name => "Kelli", :last_name => "Zeba")
      put :update,:id => client.id
      client.first_name.should == "Kelli"
      client.last_name.should == "Zeba"
      get :show,:id => client.id
      response.should be_success
    end
  end  
  
  describe "GET 'edit'" do
    it "should render the edit form" do
      client = Client.create!(:first_name => "Kelly", :last_name => "Zeba")
       get :edit,:id => client.id
       response.should be_success
       assigns[:client].id.should == client.id
    end
  end
  
  describe "DELETE 'destroy'" do
    it "should delete the client" do
      client = Client.create!(:first_name => "Kelly", :last_name => "Zeba")
      Client.count.should == 1
      delete :destroy, :id => client
      Client.count.should == 0
      get :index
      response.should be_success
    end  
  end
end