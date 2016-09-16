class CreateJoinTableBarsUsers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :bars, :users do |t|
      t.index :bar_id
      t.index :user_id
    end
  end
end
