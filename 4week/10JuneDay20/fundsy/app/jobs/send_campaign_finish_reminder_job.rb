class SendCampaignFinishReminderJob < ActiveJob::Base
  queue_as :default

  def perform(campaign)
    # if total pledges are less than the goal send an email to the user
    if campaign.pledged_amount < campaign.goal
      Rails.logger.info ">>>>>>> SEND EMAIL TO USER"
    else
      Rails.logger.info ">>>>>>> NO NEED TO SEND EMAIL TO USER"
    end
  end
end
