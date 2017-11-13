class CreateTopicOfInterestsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :topic_of_interests_users do |t|
      t.references :user, foreign_key: true
      t.references :topic_of_interest, foreign_key: true

      t.timestamps
    end
  end
end
