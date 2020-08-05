# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.6.6

* Rails version 6.0.3.2

* System dependencies

	Bootstrap & jQuery (CDN for both is included in /layouts/application.html.erb)

* Configuration

* Database creation

* Database initialization
	I used postgres as the db
	to seed the db from the csv files run the following:
		rake csv_import:locations
		rake csv_import:technicians
		rake csv_import:work_orders

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

I attempted to make an hourly grid with flexible height cells whose height represent the amount of time covered by the cell. I returned the data as JSON grouped by the technician, allowing me to easily loop over it to create vertical columns. Inside the technician loop I also looped over time in 1 hour increments and workorders to place the scheduled work at the correct time. The main problem I faced was Alice's two overlapping work orders. I'm not sure what the best solution was for that, for future work orders, input validation to prevent overlapping work orders would be the solution.
