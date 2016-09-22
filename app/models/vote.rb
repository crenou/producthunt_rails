class Vote < ApplicationRecord

	belongs_to :user
	belongs_to :product

	validates_presence_of :product_id, :user_id
	validates_uniqueness_of :user_id, scope: :product_id
end
