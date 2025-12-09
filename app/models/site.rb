require 'net/http'
require 'openssl'

class Site < ApplicationRecord
  before_save :check_status

  def check_status
    puts "🔍 Checking #{url}..."
    
    # 1. Start the stopwatch
    start_time = Time.now
    
    begin
      uri = URI(self.url)
      
      # Prepare the connection (Enable SSL checks)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = (uri.scheme == "https")
      
      # 2. Get the SSL Certificate (if HTTPS)
      if http.use_ssl?
        http.verify_mode = OpenSSL::SSL::VERIFY_PEER
        http.start do |h|
          cert = h.peer_cert
          # Save the expiry date
          self.ssl_expires_at = cert.not_after if cert
        end
      end

      # 3. Make the Request
      response = Net::HTTP.get_response(uri)
      
      # 4. Stop the stopwatch (Calculate duration in milliseconds)
      duration = ((Time.now - start_time) * 1000).to_i
      self.response_time = duration

      # 5. The "Smart" Status Logic
      if response.is_a?(Net::HTTPSuccess) || response.is_a?(Net::HTTPRedirection)
        
        # FAIL if it's too slow (e.g., over 2 seconds)
        if duration > 2000
           self.status = "⚠️ Slow (#{duration}ms)"
        
        # FAIL if SSL is expiring soon (e.g., in 10 days)
        elsif ssl_expires_at && ssl_expires_at < 10.days.from_now
           self.status = "⚠️ SSL Expiring"
        
        # FAIL if the page is missing specific content (if you set it)
        elsif expected_content.present? && !response.body.include?(expected_content)
           self.status = "⚠️ Content Missing"
        
        else
           self.status = "✅ Up"
        end

      else
        self.status = "⚠️ Issue (#{response.code})"
      end

    rescue StandardError => e
      self.status = "❌ Down (#{e.message})"
      self.response_time = nil
    end
  end
end