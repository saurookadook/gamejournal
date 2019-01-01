class CreatePlatforms < ActiveRecord::Migration[5.2]
  def change
    create_table :platforms do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
