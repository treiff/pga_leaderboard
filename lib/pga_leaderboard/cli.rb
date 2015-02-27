require 'thor'

module PgaLeaderboard
  class CLI < Thor
    attr_reader :tournament

    def initialize(*args)
      super
      @tournament = PgaLeaderboard::Tournament.new
    end

    desc 'leaderboard', 'see current tournament leaderboard'
    def leaderboard
      output(tournament)
    end

    private

    def output(array)
      puts
      puts tournament.tournament_name
      puts
    end
  end
end
