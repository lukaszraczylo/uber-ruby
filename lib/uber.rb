require 'uber/version'
require 'uber/client'

module UberCar
  def self.client
    @client ||= UberCar::Client.new
  end
end
