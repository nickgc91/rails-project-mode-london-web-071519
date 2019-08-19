class CorrectDocumentsTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :documents, :moment_id, :historical_moment_id 
  end
end
