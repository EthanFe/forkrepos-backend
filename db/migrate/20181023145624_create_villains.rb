class CreateVillains < ActiveRecord::Migration[5.2]
  def change
    create_table :villains do |t|
      t.string :name
      t.string :idle_image
      t.string :moving_left_image
      t.string :moving_right_image
      t.string :hit_image
      t.string :death_image
      t.integer :height
      t.integer :width
      t.integer :health, default: 100
      t.integer :damage, default: 20

      t.timestamps
    end
  end
end
