module PgaLeaderboard
  class Tournament
    require 'httparty'
    require 'uri'

    def initialize
      @response = HTTParty.get(ENDPOINT).parsed_response
    end

    def parsed_array
      @response.split("&")
    end

    def tournament_name
      full_name = URI.decode(parsed_array[4])
      full_name.gsub(/golf_s_left1=/, "")
    end

    def last_update
      time = parsed_array[2]
      time.gsub(/golf_s_stamp=/, "")
    end
  end
end
