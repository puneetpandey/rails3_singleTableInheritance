Single Table Inheritance & Polymorphic Association in Rails 3
=============================

This is a Rails 3 Application that helps you to understand:
* Single Table Inheritance
* Polymorphic Associations

Single Table Inheritance
=============================
Example
Taking "Mobile" as a single entity. We have Nokia, Samsung, Apple etc that will inherit the property of Mobile class.

class Mobile < ActiveRecord::Base end;

class Samsung < Mobile end;
class Apple < Mobile end;
class Macromax < Mobile end;

* config/routes.rb
resources :mobiles
resources :samsung, :controller => 'mobiles', :type => "Samsung"
resources :apple, :controller => 'mobiles', :type => "Apple"
resources :htc, :controller => 'mobiles', :type => "HTC"
resources :macromax, :controller => 'mobiles', :type => "Macromax"

Polymorphic Associations
=============================
class Users < ActiveRecord::Base
  has_many :comments, :as => :commendable
end

class Event < ActiveRecord::Base
  has_many :comments, :as => :commendable
end

class Comment < ActiveRecord::Base
  belongs_to :commendable, :polymorphic => true
end