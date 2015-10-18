class CreateMeets < ActiveRecord::Migration
  def change
    create_table :meets do |t|
      t.integer :athleteNum
      t.time :event1
      t.time :event2
      t.time :event3

      t.timestamps null: false
    end
  end
end
