class Project < ActiveRecord::Base
	validates :name, :description, :link, presense: true
end
