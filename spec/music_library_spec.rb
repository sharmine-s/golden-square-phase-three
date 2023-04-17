require 'music_library'

RSpec.describe MusicLibrary do
  context "adds to library" do
    it "creating a track and adding to library" do
      library = MusicLibrary.new
      track_1 = double(:track)
      library.add(track_1)
      expect(library.all).to eq [track_1]
    end
  end

  context "searches for tracks with matching keyword" do
    it "correctly returns tracks that contain keyword" do
      track_1 = double(:track, matches?: true)
      track_2 = double(:track, matches?: false)
      track_3 = double(:track, matches?: true)
      library = MusicLibrary.new
      library.add(track_1)
      library.add(track_2)
      library.add(track_3)
      expect(library.search("Love")).to eq [track_1, track_3]
    end
  end
end