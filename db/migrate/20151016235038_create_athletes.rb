class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.integer :athleteNum
      t.string :firstName
      t.string :lastName
      t.integer :birthYear
      t.timestamps null: false
    end
  end
end
