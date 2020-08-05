class Location < ApplicationRecord
	belongs_to :workOrder, foreign_key: 'location_id'
end
