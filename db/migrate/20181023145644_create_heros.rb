class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :idle_image
      t.string :moving_left_image
      t.string :moving_right_image
      t.string :hit_image
      t.string :death_image
      t.integer :health, default: 100
      t.integer :damage, default: 25
      t.timestamps
    end
  end
end
