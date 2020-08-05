class SchedulesController < ApplicationController
	def index
		require 'date'
		
		@technicians = Technician.all.as_json

		@technicians.each do |t|
			t["work"] = Technician.find_by_id(t["id"]).get_work
		end



	end
end
