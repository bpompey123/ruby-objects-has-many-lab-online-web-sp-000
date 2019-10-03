class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end




end
