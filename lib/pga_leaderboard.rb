require "pga_leaderboard/version"
require_relative "pga_leaderboard/tournament"
require_relative "pga_leaderboard/cli"
require_relative "pga_leaderboard/scheduler"

module PgaLeaderboard
  ENDPOINT = "http://sports.espn.go.com/sports/golf/bottomLineGolfLeaderboard"
  INTERVAL = 180
end
