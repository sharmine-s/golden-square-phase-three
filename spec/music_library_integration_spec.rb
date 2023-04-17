require 'music_library'
require 'track'

RSpec.describe "MusicLibrary Integration" do
  context "checking that a track object was successfully added to the music library" do
    it "1 track gets added to the library" do
      track_1 = Track.new("Burna Boy", "Anybody")
      library = MusicLibrary.new
      library.add(track_1)
      expect(library.all).to eq track_1
    end
  end
end