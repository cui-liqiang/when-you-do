class CreateTagsTopic < ActiveRecord::Migration
  def up
  	create_table :tags_topics, :id => false do |t|
  		t.references :tag, :null => false
  		t.references :topic, :null => false
  	end
  end

  def down
  	drop_table :tags_topics
  end
end
