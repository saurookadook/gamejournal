class CreateOwnedGames < ActiveRecord::Migration[5.2]
  def change
    create_table :owned_games do |t|
      t.integer :game_id
      t.integer :user_id
      t.text :notes

      t.timestamps
    end
  end
end
