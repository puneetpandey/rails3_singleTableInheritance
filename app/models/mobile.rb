class Mobile < ActiveRecord::Base
  attr_accessible :manufacturer, :model, :operating_system, :type

  has_many :mobile_colors
  has_many :colors, :through => :mobile_colors
end
