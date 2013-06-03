class Event < ActiveRecord::Base
  attr_accessible :name, :organizer, :place

  # has_many :pictures, :as => :imageable
  has_many :comments, :as => :commendable
end
