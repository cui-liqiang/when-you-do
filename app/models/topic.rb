class Topic < ActiveRecord::Base
  attr_accessible :description

  has_and_belongs_to_many :tags
  has_many :items
end
