class WorkordersController < ApplicationController
	def new
		@workorder = WorkOrder.new
	end
	def show
		@workorder = WorkOrder.find(params[:id])
	end
end