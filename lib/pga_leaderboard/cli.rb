require 'thor'

module PgaLeaderboard
  class CLI < Thor

    include PgaLeaderboard
    attr_reader :tournament

    def initialize(*args)
      super
      @tournament = PgaLeaderboard::Tournament.new
    end

    desc 'leaderboard', 'see current tournament leaderboard'
    def leaderboard
      run { output(tournament) }
    end

    private

    def output(array)
      puts
      puts "Last updated: #{tournament.last_update}"
      puts
      puts tournament.tournament_name
      puts
    end
  end
end
