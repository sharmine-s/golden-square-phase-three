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
end