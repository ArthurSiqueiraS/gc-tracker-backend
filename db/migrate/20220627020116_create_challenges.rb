class CreateChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :identifier
      t.integer :completion_times
      t.integer :quests
      t.integer :period
      t.string :down_days
      t.string :splash

      t.timestamps
    end
  end
end
