require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@all = []
    @@count = 0
    @@genres =[]
    @@artists = []


    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@all << self
        @@count += 1
        @@genres << self.genre
        @@artists << self.artist
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
        genre_count = {}
        @@genres.uniq.each do |genre|
            genre_count[genre] = @@genres.count(genre)
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.uniq.each do |artist|
            artist_count[artist] = @@artists.count(artist)
        end
        artist_count
    end

end

song1 = Song.new("hey", "donovan", "Rap")
song2 = Song.new("heyyyyyoooo", "donovan", "Rap")
song3=Song.new("hiiiii", "Dono", "Country")

#binding.pry