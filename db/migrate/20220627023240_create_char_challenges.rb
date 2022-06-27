class CreateCharChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :char_challenges do |t|
      t.integer :char_id
      t.integer :challenge_id
      t.integer :completed_times
      t.integer :quests_completed

      t.timestamps
    end
  end
end
