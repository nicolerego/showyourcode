class User < ActiveRecord::Base
	has_secure_password

	validates :name, :email, presence: true
	validates :email, uniqueness: true

	has_many :reviews
	has_many :projects, through: :reviews

	has_many :owned_products, class_name: "Product", foreign_key: :owner_id

end
