class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    fail "Argument should be an instance of Diary" unless diary.is_a? Diary
    @diary = diary
    @is_locked = true
  end

  def read
    # Raises the error "Go away!" if the diary is locked
    # Returns the diary's contents if the diary is unlocked
    # The diary starts off locked
    @is_locked == true ? "Go away!" : @diary.read
  end

  def lock
    # Locks the diary
    # Returns nothing
    @is_locked = true
  end

  def unlock
    # Unlocks the diary
    # Returns nothing
    @is_locked = false
  end
end