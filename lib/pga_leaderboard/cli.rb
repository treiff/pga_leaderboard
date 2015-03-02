require 'thor'

module PgaLeaderboard
  class CLI < Thor
    require 'colorize'
    include PgaLeaderboard

    attr_reader :tournament

    def initialize(*args)
      super
    end

    desc 'leaderboard', 'see current tournament leaderboard'
    def leaderboard
      run {
        @tournament = PgaLeaderboard::Tournament.new
        output(tournament)
      }
    end

    private

    def output(array)
      puts
      tournament.heading
      puts "--------------------------------------------".colorize(:red)
      puts
      tournament.body
      puts
    end
  end
end
