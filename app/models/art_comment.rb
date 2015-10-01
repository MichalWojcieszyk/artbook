class ArtComment < ActiveRecord::Base
	belongs_to :art
	belongs_to :user

	validates_presence_of :title, :content
end
