class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.string :name
      t.date :birth_date
      t.integer :death_date
      t.string :bio
      t.string :img_url
      t.string :title

      t.timestamps
    end
  end
end
