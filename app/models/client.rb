class Client < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :first_name, :last_name
  has_many :notes, :dependent => :destroy
  validates  :first_name, :presence => true
  validates  :last_name, :presence => true
end
