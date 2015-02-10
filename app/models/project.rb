class Project < ActiveRecord::Base
	validates :name, :description, :link, presence: true

	has_many :reviews
	has_many :users, through: :reviews

	belongs_to :owner, class_name: "User"

end
