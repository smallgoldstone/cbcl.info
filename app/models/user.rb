class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # attr_accessible :title, :body
  attr_accessible :email, :password, :password_confirmation, :nickname

  has_many :join_clubs, :foreign_key => "member_id"
  has_many :clubs, :through => :join_clubs
end