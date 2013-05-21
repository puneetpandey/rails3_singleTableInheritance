class Color < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true, :uniqueness => true

  has_many :mobile_colors
  has_many :mobiles, :through => :mobile_colors
end
