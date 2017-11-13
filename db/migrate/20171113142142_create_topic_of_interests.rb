class CreateTopicOfInterests < ActiveRecord::Migration[5.1]
  def change
    create_table :topic_of_interests do |t|
      t.string :topic

      t.timestamps
    end
  end
end
