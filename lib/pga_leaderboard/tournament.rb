module PgaLeaderboard
  class Tournament
    require 'httparty'
    require 'uri'

    def initialize
      @response = HTTParty.get(ENDPOINT).parsed_response
    end

    def parsed_array
      resp = @response.split("&")
      resp.shift(4)
      resp.pop(3)
      resp
    end

    def clean_response
      clean_array = []
      parsed_array.each do |item|
        stripped_item = item.gsub(/^[^=]*=/, "")
        clean_array << URI.decode(stripped_item)
      end
      clean_array
    end

    def heading
      clean_response[0..1].each do |item|
        puts item.rjust(35)
      end
    end

    def body
      clean_response[2..clean_response.length].each do |item|
        puts item.gsub(/-\d/) { |score| score.colorize(:red) }
      end
    end
  end
end
