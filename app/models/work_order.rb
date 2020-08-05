class WorkOrder < ApplicationRecord
	has_one :location, foreign_key: 'id', primary_key: 'location_id'
	belongs_to :technician, primary_key: 'id', foreign_key: 'technician_id'
end
