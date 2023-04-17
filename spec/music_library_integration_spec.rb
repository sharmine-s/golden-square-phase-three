require 'music_library'
require 'track'

RSpec.describe "MusicLibrary Integration" do
  context "checking that a track object was successfully added to the music library" do
    it "1 track gets added to the library" do
      track_1 = Track.new("Burna Boy", "Anybody")
      library = MusicLibrary.new
      library.add(track_1)
      expect(library.all).to eq [track_1]
    end
  end

  context "searches for tracks with matching keyword" do
    it "correctly returns tracks that contain keyword" do
      track_1 = Track.new("Nafe Smallz", "Good Love")
      track_2 = Track.new("Mad Love", "Mabel")
      track_3 = Track.new("Britney Spears", "Toxic")
      library = MusicLibrary.new
      library.add(track_1)
      library.add(track_2)
      library.add(track_3)
      expect(library.search("Love")).to eq [track_1, track_2]
    end
  end
end