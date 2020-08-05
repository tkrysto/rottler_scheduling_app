namespace :csv_import do

	desc "Imports location data from lib/csv/locations.csv into locations db table"
	task locations: :environment do
		require "csv"
		CSV.foreach(Rails.root.join("lib/csv/locations.csv"), headers: true) do |l|
			Location.create({
				id: l[0],
				name: l[1],
				city: l[2]
			})
		end

		puts "csv import finished: locations.csv"
	end

	desc "Imports technician data from lib/csv/technicians.csv into technicians db table"
	task technicians: :environment do
		require "csv"
		CSV.foreach(Rails.root.join("lib/csv/technicians.csv"), headers: true) do |l|
			Technician.create({
				id: l[0],
				name: l[1]
			})
		end

		puts "csv import finished: technicians.csv"
	end

	desc "Imports work order data from lib/csv/work_orders.csv into work_orders db table"
	task work_orders: :environment do
		require "csv"
		require 'date'
		CSV.foreach(Rails.root.join("lib/csv/work_orders.csv"), headers: true) do |l|
			newtime = DateTime.strptime(l[3], "%m/%d/%y %H:%M")
			WorkOrder.create({
				id: l[0],
				technician_id: l[1],
				location_id: l[2],
				time: newtime,
				duration: l[4],
				price: l[5]
			})
		end

		puts "csv import finished: work_orders.csv"
	end
end