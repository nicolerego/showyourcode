class Review < ActiveRecord::Base
	validates :comment, :presence => true

	belongs_to :project
	belongs_to :user
end
