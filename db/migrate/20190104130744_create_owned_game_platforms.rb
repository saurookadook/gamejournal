class CreateOwnedGamePlatforms < ActiveRecord::Migration[5.2]
  def change
    create_table :owned_game_platforms do |t|
      t.integer :owned_game_id
      t.integer :platform_id

      t.timestamps
    end
  end
end
