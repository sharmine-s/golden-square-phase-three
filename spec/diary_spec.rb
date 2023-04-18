require 'diary'

RSpec.describe Diary do
  context "initializing diary correctly" do
    it "fails if contents isn't a string" do
      expect { diary = Diary.new(["hello"]) }.to raise_error "contents must be a string"
    end
  end

  context "read method" do
    it "returns contents of the diary" do
      diary = Diary.new("contents")
      expect(diary.read).to eq "contents"
    end
  end
end