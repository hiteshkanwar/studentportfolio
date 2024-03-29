class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :user_role,:firstname,:lastname

  has_many :user_roles
  has_many :roles, :through =>:user_roles
  # attr_accessible :title, :body
  has_one :student
  has_one :school
  has_many :photos
  has_many :likes
end
