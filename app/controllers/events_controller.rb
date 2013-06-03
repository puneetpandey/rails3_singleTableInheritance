class EventsController < ApplicationController
	respond_to :html, :xml, :json

	def index
		@events = Event.all
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(params[:event])

		if @event.save
			respond_with(@event)
		else
			render :action => 'new'
		end
	end

	def show
		@event = Event.find(params[:id])
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])

		if @event.update_attributes(params[:event])
		
		end
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
	end
end
