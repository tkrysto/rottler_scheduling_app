class WorkordersController < ApplicationController
	def new
		@workorder = WorkOrder.new
	end
	def show
		@workorder = WorkOrder.find(params[:id])
	end
	def create

		@workorder = WorkOrder.new #(work_params)
		if @workorder.save
			redirect_to root_path
		else
			flash.now[:alert] = @workorder.errors.full_messages
		end
	end
	private 
=begin
	def work_params
		params.require(:technician_id, :location_id, :time, :duration, :price) #.permit(:technician_id, :location_id, :time, :duration, :price)
	end
=end
end