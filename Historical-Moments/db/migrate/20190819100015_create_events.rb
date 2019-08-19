class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :img_url
      t.date :event_date
      t.integer :moment_id

      t.timestamps
    end
  end
end
