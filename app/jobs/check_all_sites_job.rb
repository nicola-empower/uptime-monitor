class CheckAllSitesJob < ApplicationJob
  queue_as :default

  def perform
    # 1. Check all sites
    Site.all.each do |site|
      site.save # This triggers the before_save :check_status callback
    end

    # 2. Schedule the next run in 10 minutes (Recursive Job)
    CheckAllSitesJob.set(wait: 10.minutes).perform_later
  end
end
