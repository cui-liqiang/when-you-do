class TopicsController < ApplicationController
	def destroy
		@topic = Topic.find(params[:id])

		@topic.items.each do |item|
			item.delete
		end
		@topic.delete
		redirect_to topics_path
	end

	def edit
		@topic = Topic.find(params[:id])
	end

	def update
		@topic = Topic.find(params[:id])
		@topic.update_attributes params[:topic]
		update_or_create_item

		redirect_to edit_topic_path @topic
	end

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

	private 
	def update_or_create_item
		params[:items].each do |item|
			item[:id].nil? ? @topic.items << Item.new(item) : Item.find(item[:id]).update_attributes(item)
		end
	end
end
