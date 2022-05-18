class Song
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        
        @@artists.push(artist)

        @@genres.push(genre)

    end

    @@genres = []
    @@artists = []
    @@count = 0

    def self.count
        return @@count
    end

    def self.artists
        no_dup_artists = @@artists.uniq
        return no_dup_artists
    end

    def self.genres
        no_dup_genres = @@genres.uniq
        return no_dup_genres
    end

    def self.genre_count
        genre_count = {}
        # @@genres.each do |genre|
        #     if genre_count[genre]
        #         genre_count[genre] += 1
        #     else 
        #         genre_count[genre] = 1
        #     end
        # end
        # genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end
