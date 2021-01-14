require 'pry'

class Song
    attr_reader :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres.push(genre)
        @@artists.push(artist)
        if @@genre_count.key?(genre)
            @@genre_count[genre]+=1
        else
            @@genre_count[genre]=1
        end
        if @@artist_count.key?(artist)
            @@artist_count[artist]+=1
        else
            @@artist_count[artist]=1
        end
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq do |index|
            index
        end
    end

    def self.genres
        @@genres.uniq do |index|
            index
        end
    end

    def self.genre_count
        @@genre_count
    end

    def self.artist_count
        @@artist_count
    end

end