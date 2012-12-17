require 'test_helper'

class TagsTest < ActiveSupport::TestCase
  test "assosiation" do
  	tag = Tag.create(:name => "Agile")
  	topic = Topic.create(:description => "how to deploy")
  	tag.topics << topic

  	assert Tag.first.topics[0].description == "how to deploy"
  end
end
