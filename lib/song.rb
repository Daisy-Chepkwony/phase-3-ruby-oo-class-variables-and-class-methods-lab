class Song

    @@artists = []
    @@genres = []
    @@count = 0
    @@songs = []

    attr_accessor :name, :artist, :genre

    def initialize(name,artist,genre)
        @name=name
        @genre=genre
        @@genres<< genre
        @artist=artist
        @@artists<<artist
        @@count +=1
        @@songs<<self
    end
    def name
        return 'hit me baby one more time'
    end
    def artist
        return 'Brittany Spears' 
    end
    def self.artists
        @@artists.uniq
    end
    def genre
        return 'pop'
    end
    def self.genres
        @@genres.uniq
    end
    def  self.count
        @@count
    end
    def self.genre_count
        @@genres.tally

    end
    def self.artist_count
        @@artists.tally
    end

end

    # def self.artist_count
    #     count=Hash.new(0)
    #     @@songs.each do |song|
    #       count[song.artist] +=1
    #     end
    #     count
    # end
