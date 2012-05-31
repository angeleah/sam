class Notes < ActiveRecord::Base
  attr_accessible :notes
  belongs_to :client
end
