class Car < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 64 }
	validates :email, presence: true
	validates :price, presence: true
	validates :location, presence: true, length: { maximum: 16 }
	validates :description, length: { maximum: 140 }
end
