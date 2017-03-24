module Mixpanel_Helper
  extend ActiveSupport::Concern

  def self.track(ip, message)
    tracker = Mixpanel::Tracker.new(ENV['mixpanel_token'])
    puts "#{ip} - #{message}"
    resp = tracker.track(ip, message)
    return resp
  end

end
