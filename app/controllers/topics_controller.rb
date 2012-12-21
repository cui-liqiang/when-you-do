class TopicsController < ApplicationController
	def index
		@topics = Topic.all
	end

	def new
		@topic = Topic.new
	end

	def create
		@topic = Topic.create params[:topic]
		params[:items].each do |item|
			@topic.items << Item.new(item)
		end
		redirect_to :new_topic
	end
end
