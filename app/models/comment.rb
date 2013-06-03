class Comment < ActiveRecord::Base
  attr_accessible :comment

  # belongs_to :imageable, :polymorphic => true
  belongs_to :commendable, :polymorphic => true
end
