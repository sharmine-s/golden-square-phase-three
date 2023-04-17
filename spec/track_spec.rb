require 'track'

RSpec.describe Track do
  context "initializing correctly" do
    it "fails if title or artist isn't a string" do
      expect { Track.new("Burna Boy", :anybody) }.to raise_error "Title and Artist should both be strings"
    end
  end
end