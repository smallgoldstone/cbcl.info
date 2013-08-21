class Party < ActiveRecord::Base
  attr_accessible :date_at, :desc, :name
  belongs_to :club, :counter_cache => true
end
