# frozen_string_literal: true

module Api
  module Prematch
    # FIXTURES
    # Get list of all the fixtures
    # GET /GetFixtures{?lang, timestamp, fromdate, todate, indent, sports, locations, leagues, fixtures}
    # Parameters
    # Name: Description
    # lang: Response content language. Default value: English
    # timestamp: Response will contain content that was updated after given timestamp
    # fromdate: Response will contain content that was updated after given timestamp
    # todate: Response will contain events which start before given date
    # indent: Response content will be indented
    # sports: Comma separated list of sports
    # locations: Comma separated list of locations
    # leagues: Comma separated list of leagues
    # fixtures: Comma separated list of fixtures
  	def fixtures(params = {})
  	  get("GetFixtures", params: params)
  	end

    # FIXTURE MARKETS
    # Get list of all the fixture markets
    # GET /GetFixtureMarkets{?lang, timestamp, fromdate, todate, indent, sports, locations, leagues, markets}
    # Parameters
    # Name: Description
    # lang: Response content language. Default value: English
    # timestamp: Response will contain content that was updated after given timestamp
    # fromdate: Response will contain content that was updated after given timestamp
    # todate: Response will contain events which start before given date
    # indent: Response content will be indented
    # sports: Comma separated list of sports
    # locations: Comma separated list of locations
    # leagues: Comma separated list of leagues
    # markets: Comma separated list of markets
    def fixture_markets(params = {})
      get("GetFixtureMarkets", params: params)
    end

    # EVENTS
    # Get list of all the events
    # GET /GetEvents{?lang, timestamp, fromdate, todate, indent, sports, locations, leagues, markets}
    # Parameters
    # Name: Description
    # lang: Response content language. Default value: English
    # timestamp: Response will contain content that was updated after given timestamp
    # fromdate: Response will contain content that was updated after given timestamp
    # todate: Response will contain events which start before given date
    # indent: Response content will be indented
    # sports: Comma separated list of sports
    # locations: Comma separated list of locations
    # leagues: Comma separated list of leagues
    # markets: Comma separated list of markets
    def events(params = {})
      get("GetEvents", params: params)
    end
  end
end
