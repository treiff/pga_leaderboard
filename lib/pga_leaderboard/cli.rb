require 'thor'

module PgaLeaderboard
  class CLI < Thor

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
      p tournament.clean_response
      puts
    end
  end
end
