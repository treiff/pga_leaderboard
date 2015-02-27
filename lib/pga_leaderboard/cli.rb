require 'thor'

module PgaLeaderboar
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

    desc 'output', 'output current tournament leaderboard'
    def output(tournament)
      puts
      puts tournament
      puts
    end
  end
end
