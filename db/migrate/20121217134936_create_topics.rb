class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :description
      t.integer :tag_id

      t.timestamps
    end
  end
end
