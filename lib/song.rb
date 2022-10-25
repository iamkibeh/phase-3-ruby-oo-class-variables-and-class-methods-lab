class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    def initialize name, artist, genre
        @name = name
        @artist = artist
        @genre = genre
        @@count+=1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end
    def self.artists
        @@artists.uniq
    end

    def self.genre_count
         @@genres.tally
    end
    def self.artist_count
         @@artists.tally
    end
end

song1= Song.new("Lucifer", "Jay-Z", "rap")
song2= Song.new("99 Problems", "Jay-Z", "rap")
song3= Song.new("hit me baby one more time", "Brittany Spears", "pop")
puts Song.artist_count 