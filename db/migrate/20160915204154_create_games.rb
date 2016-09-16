class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :location_type, default: "bars"
      t.integer :group_id

      t.timestamps
    end
  end
end
