class Order < ApplicationRecord
  belongs_to :restaurtant
	has_many :order_products

	validates :name, :phone_number, :total_value, :city, :neighborhood, :street, :number, precense: true

	enun status: { waiting: 0, delivered: 1}
end
