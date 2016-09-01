class AddLongtituteAndLatitudeToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :longitude, :float
    add_column :campaigns, :latitude, :float
  end
end
