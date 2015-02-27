require 'spec_helper'

module PgaLeaderboard
  describe Tournament do
    subject(:tournament) { PgaLeaderboard::Tournament.new }

    it 'exists as a object' do
      expect(tournament).to be_a(Tournament)
    end

    it 'should return an array when parsed' do
      expect(tournament.parsed_array).to be_a(Array)
    end

    it 'returns tournament name as string' do
      expect(tournament.tournament_name).to be_a(String)
    end

    it 'returns tournament name scrubbed of identifier' do
      expect(tournament.tournament_name).not_to include("golf")
    end

    it 'returns the last updated time as string' do
      expect(tournament.last_update).to be_a(String)
    end
  end

  describe CLI do
    it 'is initialized with a tournament'
  end

  describe Scheduler do
    it 'takes time in seconds argument'
    it 'runs a task after x amount of seconds'
    it 'reruns the task until exited'
  end
end
