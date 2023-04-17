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
      track_1 = double(:track)
      expect(track_1).to receive(:matches?).with("Love").and_return(true)
      track_2 = double(:track)
      expect(track_2).to receive(:matches?).with("Love").and_return(false)
      track_3 = double(:track)
      expect(track_3).to receive(:matches?).with("Love").and_return(true)
      library = MusicLibrary.new
      library.add(track_1)
      library.add(track_2)
      library.add(track_3)
      expect(library.search("Love")).to eq [track_1, track_3]
    end
  end
end