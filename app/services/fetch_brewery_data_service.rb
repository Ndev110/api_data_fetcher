require 'httparty'

class FetchBreweryDataService
  BASE_URL = 'https://api.openbrewerydb.org/v1/breweries'

  def self.fetch_breweries
    response = HTTParty.get(BASE_URL)
    if response.success?
      response.parsed_response
    else
      raise "#{response.message}"
    end
  rescue HTTParty::Error, StandardError => error
    Rails.logger.error("Failed to fetch breweries: #{error.message}")
    { error: "#{error.message}" }
  end
end
