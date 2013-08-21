class JoinClub < ActiveRecord::Base
  belongs_to :club, :counter_cache => true
  belongs_to :member, :class_name => "User", :counter_cache => true
  # attr_accessible :title, :body
end
