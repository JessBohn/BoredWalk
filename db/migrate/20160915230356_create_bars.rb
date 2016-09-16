class CreateBars < ActiveRecord::Migration[5.0]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :address
      t.integer :rating
      t.string :website
      t.string :photo

      t.timestamps
    end
  end
end
