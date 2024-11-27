class BreweriesController < ApplicationController
  def index
    result = FetchBreweryDataService.fetch_breweries
    if result.is_a?(Hash) && result[:error]
      @error_message = result[:error]
      @breweries = []
    else
      @breweries = Kaminari.paginate_array(result).page(params[:page]).per(10)
    end
  end
end
