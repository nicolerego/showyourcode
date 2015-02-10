class Project < ActiveRecord::Base
	validates :name, :description, :link, presence: true
end
