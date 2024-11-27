require "httparty"

class FetchBreweryDataService
  BASE_URL = "https://api.openbrewerydb.org/breweries".freeze
  CACHE_KEY = "breweries_data".freeze
  CACHE_EXPIRATION = 1.hour

  def self.fetch_breweries
    Rails.cache.fetch(CACHE_KEY, expires_in: CACHE_EXPIRATION) do
      response = HTTParty.get(BASE_URL)
      if response.success?
        response.parsed_response
      else
        raise "#{response.message}"
      end
    end
  rescue HTTParty::Error, StandardError => error
    Rails.logger.error("Failed to fetch breweries: #{error.message}")
    { error: "#{error.message}" }
  end
end
