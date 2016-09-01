class NearbyCampaignsController < ApplicationController
  def index
    @campaigns = Campaign.near("Vancouver")
    @markers_hash = Gmaps4rails.build_markers(@campaigns) do |campaign, marker|
                      marker.lat campaign.latitude
                      marker.lng campaign.longtitude
                      marker.infowindow campaign.title
                    end
  end
end
