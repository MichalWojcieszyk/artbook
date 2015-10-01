class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :art_comments
  has_many :author_comments
  has_many :authors
  has_many :arts

  validates_presence_of :email, :first_name, :last_name, :nick
end
