class Genre
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end
    def artists
        Artist.all.select do |artist| 
            artist.genres.include?(self)
        end
    end
end