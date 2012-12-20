require 'test_helper'

class TopicsControllerTest < ActionController::TestCase
  test "store topic and the items belong to it properly" do
  	post :create, "topic"=>{"description"=>"topic desc"}, 
  				  "items"=>[{"content"=>"item1"}, {"content" => "item2"}]
  	assert Topic.all.size == 1
  	topic = Topic.first
  	assert topic.description == "topic desc"
  	assert topic.items.size == 2
  	assert topic.items.first.content == "item1"
  	assert topic.items[1].content == "item2"
  end
end
