# frozen_string_literal: true

module Api
  module Reference
    # SPORTS
    # Get list of all the sports
    # GET /GetSports{?lang, indent}
    # Parameters
    # Name: Description
    # lang: Response content language. Default value: English
    # indent: Response content will be indented
    def sports(params = {})
      get("GetSports", params: params)
    end

    # LOCATIONS
    # Get list of all the locations
    # GET /GetLocations{?lang, indent}
    # Parameters
    # Name: Description
    # lang: Response content language. Default value: English
    # indent: Response content will be indented
    def locations(params = {})
      get("GetLocations", params: params)
    end

    # LEAGUES
    # Get list of all the leagues
    # GET /GetLeagues{?lang, indent}
    # Parameters
    # Name: Description
    # lang: Response content language. Default value: English
    # indent: Response content will be indented
    def leagues(params = {})
      get("GetLeagues", params: params)
    end

    # BOOKMAKERS
    # Get list of all the bookmakers
    # GET /GetBookmakers{?lang, indent}
    # Parameters
    # Name: Description
    # lang: Response content language. Default value: English
    # indent: Response content will be indented
    def bookmakers(params = {})
      get("GetBookmakers", params: params)
    end
    
    # MARKETS
    # Get list of all the markets
    # GET /GetMarkets{?lang, indent}
    # Parameters
    # Name: Description
    # lang: Response content language. Default value: English
    # indent: Response content will be indented
    def markets(params = {})
      get("GetMarkets", params: params)
    end
  end
end
