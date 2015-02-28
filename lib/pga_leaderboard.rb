require "pga_leaderboard/version"
require_relative "pga_leaderboard/tournament"
require_relative "pga_leaderboard/cli"

module PgaLeaderboard
  ENDPOINT = "http://sports.espn.go.com/sports/golf/bottomLineGolfLeaderboard"
  INTERVAL = 180

  def run
    while true
      yield
      sleep INTERVAL
    end
  end
end
