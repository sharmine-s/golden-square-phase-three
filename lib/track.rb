class Track
  def initialize(title, artist) # title and artist are both strings
    fail "Title and Artist should both be strings" unless title.is_a? String
    fail "Title and Artist should both be strings" unless artist.is_a? String
    @title = title
    @artist = artist
  end

  def matches?(keyword) # keyword is a string
    # Returns true if the keyword matches either the title or artist
    if @title.include?(keyword) || @artist.include?(keyword)
      return true
    else
      return false
    end
  end
end