class Author < ActiveRecord::Base
	has_many :arts
	has_many :author_comments
	belongs_to :user

	validates_presence_of :name, :rating
end
