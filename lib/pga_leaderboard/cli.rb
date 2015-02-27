require 'thor'

module PgaLeaderboard
  class CLI < Thor
    attr_reader :tournament

    def initialize(*args)
      super
      @tournament = PgaLeaderboard::Tournament.new
    end

    desc 'now', 'see current tournament leaderboard'
    def now
      tournament = @tournament
      output(tournament)
    end

    private

    def output(tournament)
      puts
      puts tournament.string_response
      puts
    end
  end
end
