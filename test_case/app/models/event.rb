class Event < ActiveRecord::Base
  attr_accessible :capacty, :description, :is_pubilc, :name
  validates_presence_of :name
end

