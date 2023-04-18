require 'diary'
require 'secret_diary'

RSpec.describe "Secret Diary Integration Tests" do
  context "initialize works with an instance of Diary" do
    it "fails if a secret diary is created without a Diary object" do
      expect { secret_diary = SecretDiary.new("hello") }.to raise_error "Argument should be an instance of Diary"
    end
  end

  context "reading the contents of the diary" do
    it "raises the error go away if the diary is locked" do
      diary = Diary.new("these are the contents")
      secret_diary = SecretDiary.new(diary)
      expect(secret_diary.read).to eq "Go away!"
    end

    it "returns the diary's contents if the diary is unlocked" do
      diary = Diary.new("these are the contents")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq diary.read
    end
  end
end