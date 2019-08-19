class FixEventColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :moment_id, :historical_moment_id 
  end
end
