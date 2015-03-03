require 'spec_helper'

module PgaLeaderboard
  describe Tournament do
    subject(:tournament) { PgaLeaderboard::Tournament.new }

    it 'exists as a object' do
      expect(tournament).to be_a(Tournament)
    end

    describe '#parsed_array' do
      it 'should return an array when parsed' do
        expect(tournament.parsed_array).to be_a(Array)
      end
    end

    describe '#clean_response' do
      it 'should return a scrubbed array' do
        expect(tournament.clean_response).to be_a(Array)
      end

      it 'removes any prepended text before = sign' do
        expect(tournament.clean_response[4]).not_to include("=")
      end

      it 'decodes each item to remove URI encoding' do
        expect(tournament.clean_response[4]).not_to include("%20")
      end
    end

    describe '#heading' do
      it 'extracts the first two array elements' do
        expect(tournament.heading.length).to eq(2)
      end
    end

    describe '#body' do
      it 'returns remaining array elements' do
        expect(tournament.body.length).to eq(tournament.clean_response.length - tournament.heading.length)
      end
    end
  end
end
