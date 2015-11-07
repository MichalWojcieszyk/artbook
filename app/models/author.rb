class Author < ActiveRecord::Base
	has_many :arts
	has_many :author_comments
	belongs_to :user
  belongs_to :author_category

	validates_presence_of :name
end
