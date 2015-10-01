class AuthorComment < ActiveRecord::Base
	belongs_to :author
	belongs_to :user

	validates_presence_of :title, :content
end
