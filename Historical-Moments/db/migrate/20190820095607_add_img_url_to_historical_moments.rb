class AddImgUrlToHistoricalMoments < ActiveRecord::Migration[5.2]
  def change
    add_column :historical_moments, :img_url, :string
  end
end
