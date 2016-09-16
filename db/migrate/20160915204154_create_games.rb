class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :location, default: "78701"
      t.integer :group_id

      t.timestamps
    end
  end
end
