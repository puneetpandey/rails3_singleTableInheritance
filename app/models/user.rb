class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :pictures, :as => :imageable
end
