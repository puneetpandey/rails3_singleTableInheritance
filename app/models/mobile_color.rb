class MobileColor < ActiveRecord::Base
  attr_accessible :color_id, :mobile_id

  belongs_to :color
  belongs_to :mobile
end
