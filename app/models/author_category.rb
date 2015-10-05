class AuthorCategory < ActiveRecord::Base
  has_many :authors

  validates_uniqueness_of :name
end
