class FixActorColumnName < ActiveRecord::Migration[5.2]
  def change
    change_column :actors, :death_date, :date
  end
end
