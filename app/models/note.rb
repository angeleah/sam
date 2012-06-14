class Note < ActiveRecord::Base
  attr_accessible :note
  belongs_to :client
  validates  :note, :presence => true
end
