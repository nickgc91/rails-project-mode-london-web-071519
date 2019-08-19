class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.integer :event_id
      t.integer :actor_id
      t.string :name

      t.timestamps
    end
  end
end
