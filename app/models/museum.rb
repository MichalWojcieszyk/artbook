class Museum < ActiveRecord::Base
  has_many :arts

  validates_uniqueness_of :name
end
