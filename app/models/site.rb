require 'net/http'

class Site < ApplicationRecord
  # This runs AUTOMATICALLY every time you save a site
  before_save :check_status

  def check_status
    puts "🔍 Checking #{self.url}..."
    
    begin
      uri = URI(self.url)
      response = Net::HTTP.get_response(uri)

      # THE FIX: We now accept Success (2xx) OR Redirection (3xx) as "Up"
      if response.is_a?(Net::HTTPSuccess) || response.is_a?(Net::HTTPRedirection)
        self.status = "✅ Up"
      else
        # This catches actual errors like 404 (Not Found) or 500 (Server Error)
        self.status = "⚠️ Issue (#{response.code})"
      end

    rescue StandardError => e
      # This catches things like "DNS not found" or "Internet disconnected"
      puts "Error checking site: #{e.message}"
      self.status = "❌ Down (Connection Error)"
    end
  end
end