class CommentsController < ApplicationController
	respond_to :html, :xml, :json
	before_filter :load_commendable

	def index
		@comments = @commendable.comments
	end

	def new
		@comment = @commendable.comments.new
	end

	def create
		@comment = @commendable.comments.new(params[:comment])
		if @comment.save
			flash[:notice] = "Successfully saved comment."
			respond_with(@commendable)
		else
			render 'new'
		end
	end

private
	def load_commendable
		resource, id = request.path.split('/')[1, 2]
		@commendable = resource.singularize.classify.constantize.find(id)
	end
end
