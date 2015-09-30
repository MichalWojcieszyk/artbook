class Author < ActiveRecord::Base
	has_many :arts
	has_many :art_comments
	belongs_to :user
end
