class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :content
      t.integer :topic_id

      t.timestamps
    end
  end
end
