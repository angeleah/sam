class ClientsController < ApplicationController
  def create
    render "index"
    client = Client.create(params[:client])
  end
  
  def new
    @client = Client.new
  end
  
end
