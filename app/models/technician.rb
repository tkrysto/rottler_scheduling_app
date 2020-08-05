class Technician < ApplicationRecord
	has_many :workOrders, foreign_key: 'technician_id', primary_key: 'id'

	def get_work
		workOrders.joins(:location).select("work_orders.*, locations.*").as_json
	end
end
