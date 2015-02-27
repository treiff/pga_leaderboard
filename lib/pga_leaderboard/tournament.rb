module PgaLeaderboard
  class Tournament

    def initialize
      response = HTTParty.get(ENDPOINT).parsed_response
    end

  end
end
