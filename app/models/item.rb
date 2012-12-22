class Item < ActiveRecord::Base
  attr_accessible :content, :topic_id
  validates :content, :presence => true
end
