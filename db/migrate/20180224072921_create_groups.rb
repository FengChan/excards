class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :year
      t.integer :month
      t.datetime :mark_time
      t.integer :old_day_count
      t.integer :max_day_count
      t.timestamps
    end
  end
end
