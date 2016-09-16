class AddBoardSpotsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :board_spots, :integer, default: 0
  end
end
