class Club < ActiveRecord::Base
  attr_accessible :desc, :name, :url

  belongs_to :creator, :class_name => "User"
  has_many :join_clubs
  has_many :members, :through => :join_clubs
  has_many :parties

  validates :name, :presence => true
  validates :creator_id, :presence => true
  validates :url, :presence => true, :uniqueness => { :case_sensitive => false }
end
