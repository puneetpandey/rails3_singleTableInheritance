class MobilesController < ApplicationController
	respond_to :html, :xml, :json

	def index
		@mobiles = params[:type] ? mobile_type.all : Mobile.all

		respond_with(@mobiles)
	end

	def new
		@mobile = mobile_type.new

		respond_with(@mobile)
	end

	def create
		@mobile = mobile_type.new(params[:mobile])

		if @mobile.save
			respond_with(@mobile)
		end
	end

	def show
		@mobile = Mobile.find(params[:id])
		respond_with(@mobile)
	end

	def edit
		@mobile = Mobile.find(params[:id])
		respond_with(@mobile)
	end

	def update
		@mobile = mobile_type.find(params[:mobile])

		if @mobile.update_attributes(params[:mobile])
		
		end
	end

	def destroy
	
	end

private
	def mobile_type
		params[:type].constantize
	end
end
