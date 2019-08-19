class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :title
      t.string :text
      t.date :creation_date
      t.string :author
      t.integer :moment_id

      t.timestamps
    end
  end
end
