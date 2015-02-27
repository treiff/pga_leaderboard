module PgaLeaderboard
  class Tournament
    require 'httparty'

    def initialize
      @response = HTTParty.get(ENDPOINT).parsed_response
    end

    def string_response
      @response
    end

  end
end
