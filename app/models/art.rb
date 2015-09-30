class Art < ActiveRecord::Base
	belongs_to :category
	has_many :art_comments
	belongs_to :author
	belongs_to :user
end
