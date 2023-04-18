require 'diary'
require 'secret_diary'

RSpec.describe "Secret Diary Integration Tests" do

  context "reading the contents of the diary" do
    it "fails if trying to read the diary when it's locked" do
      diary = Diary.new("these are the contents")
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error "Go away!"
    end

    it "returns the diary's contents if the diary is unlocked" do
      diary = Diary.new("these are the contents")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "these are the contents"
    end
  end
end