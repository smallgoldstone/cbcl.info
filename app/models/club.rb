class Club < ActiveRecord::Base
  attr_accessible :desc, :name

  belongs_to :creator, :class_name => "User"
  has_many :join_clubs
  has_many :members, :through => :join_clubs
  has_many :parties
end
