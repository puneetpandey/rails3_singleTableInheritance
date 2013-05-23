class Event < ActiveRecord::Base
  attr_accessible :name, :organizer, :place

  has_many :pictures, :as => :imageable
end
