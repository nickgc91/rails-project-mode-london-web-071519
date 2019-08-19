class CreateHistoricalMoments < ActiveRecord::Migration[5.2]
  def change
    create_table :historical_moments do |t|
      t.string :name
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
