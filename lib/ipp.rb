require "ipp/version"
require 'net/http'


module Ipp
  def self.get
    Net::HTTP.get(URI("https://api.ipify.org"))
  end
end
