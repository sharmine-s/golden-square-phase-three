require 'track'

RSpec.describe Track do
  context "initializing correctly" do
    it "fails if title or artist isn't a string" do
      expect { Track.new("Burna Boy", :anybody) }.to raise_error "Title and Artist should both be strings"
    end

    context "matches keyword" do
      it "returns true if keyword matches title or artist" do
        track_1 = Track.new("Eminem", "Lose Yourself")
        expect(track_1.matches?("Yourself")).to eq true
      end

      it "returns false if keyword does not match title or artist" do
        track_1 = Track.new("Eminem", "Lose Yourself")
        expect(track_1.matches?("Hello")).to eq false
      end
    end
  end
end