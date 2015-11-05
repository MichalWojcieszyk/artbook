class Category < ActiveRecord::Base
	has_many :arts

	validates_uniqueness_of :name
end
