class LineItem < ActiveRecord::Base
	belongs_to :product
	belongs_to :user

	before_save :calculate_total

	private

	def calculate_total
		self.total = self.quantity * self.price
	end

end
