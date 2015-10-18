class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :athlete_id
      t.integer :meet_id

      t.timestamps null: false
    end
  end
end
