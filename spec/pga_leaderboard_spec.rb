require 'spec_helper'

describe PgaLeaderboard::Tournament do
  let(:response) { File.read(File.expand_path('../spec/fixtures/response.txt', File.dirname(__FILE__))) }

  describe 'methods' do
    before do
      allow(HTTParty).to receive(:get) { double(parsed_response: response) }
    end

    let(:tournament) { PgaLeaderboard::Tournament.new }

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
        unless tournament.clean_response.empty?
          expect(tournament.clean_response[4]).not_to include("=")
        end
      end

      it 'decodes each item to remove URI encoding' do
        unless tournament.clean_response.empty?
          expect(tournament.clean_response[4]).not_to include("%20")
        end
      end
    end

    describe '#heading' do
      it 'extracts the first two array elements' do
        unless tournament.heading.empty?
          expect(tournament.heading.length).to eq(2)
        end
      end
    end

    describe '#body' do
      it 'returns remaining array elements' do
        if tournament.body != nil
          expect(tournament.body.length).to eq(tournament.clean_response.length - tournament.heading.length)
        end
      end
    end
  end
end
