require 'spec_helper'

describe ClientsController do
  
  describe "POST 'create'" do
  
    it "should create a new client" do
      post :create, :client => {:first_name => "Kelly", :last_name => "Zeba"}
      Client.count.should == 1
      Client.first.first_name.should == "Kelly"
      Client.first.last_name.should == "Zeba"
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
end
