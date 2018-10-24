class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.belongs_to :user, foreign_key: true
      t.integer :kills
      t.integer :cookies_fired
      t.integer :cookies_hit

      t.timestamps
    end
  end
end
