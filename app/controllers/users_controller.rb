class UsersController < ApplicationController
	respond_to :html, :xml, :json

	def index
		@users = User.all

		respond_with(@users)
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])

		if @user.save
			respond_with(@user)
		else
			render :action => 'new'
		end
	end

	def show
		@user = User.find(params[:id])

		respond_with(@user)
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

		if @user.update_attributes(params[:user])
			respond_with(@user)
		else
			render :edit
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy

		redirect_to users_path
	end
end
