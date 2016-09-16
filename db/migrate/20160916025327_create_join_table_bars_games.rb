class CreateJoinTableBarsGames < ActiveRecord::Migration[5.0]
  def change
    create_join_table :bars, :games do |t|
      t.index :bar_id
      t.index :game_id
    end
  end
end
