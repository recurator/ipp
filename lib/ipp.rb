require "ipp/version"
require 'net/http'


module Ipp
  def self.get
    begin
      Net::HTTP.get(URI("https://api.ipify.org"))
    rescue Exception => e
      e.message
    end
  end
end
