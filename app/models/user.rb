class User < ActiveRecord::Base
  attr_accessible :email, :name

  # has_many :pictures, :as => :imageable
  has_many :comments, :as => :commendable
end
