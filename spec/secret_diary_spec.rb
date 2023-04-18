require 'secret_diary'

RSpec.describe SecretDiary do
  context "reading the diary" do
    it "tells you to go away if the diary is locked" do
      diary = double(:diary, read: "contents")
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error "Go away!"
    end

    it "reads the contents of diary if it is unlocked" do
      diary = double(:diary, read: "contents")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "contents"
    end

    it "tells you to go away if the diary is relocked" do
      diary = double(:diary, read: "contents")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      secret_diary.lock
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end
end