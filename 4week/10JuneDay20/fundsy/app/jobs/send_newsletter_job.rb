class SendNewsletterJob < ActiveJob::Base
  queue_as :default

  def perform(campaigns, user)
    puts "Sending newsletter to user "
  end
end
