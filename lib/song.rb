class Song
attr_accessor :name, :artist, :genre
@@count = 0 #sets the counter to begin at zero
@@artists = [] #creates an empty array to keep track of artists
@@genres = [] #creates an empty array to keep track of genres

def initialize(artist, name, genre) #initialize with 3 arguments
  @name = name
  @artist = artist
  @genre = genre
  @@count +=1 # telling the counter to add one for each pass
  @@genres << genre #adding genres to genres array
  @@artists << artist #adding artists to artists array
end

def self.count
@@count #keeping track of itself as a class
end

def self.genres #method returns an array of ONLY UNIQUE genres, no duplicates.
    @@genres.uniq
  end

def self.genre_count
   genre_count = {} #creates a hash
   @@genres.each do |genre| #itterate over the array
         if genre_count[genre] #check to see if the hash already contains a key of a particular genre.
           genre_count[genre] += 1 #If so, increment the value of that key by one
         else
           genre_count[genre] = 1 #otherwise, create a new key/value pair
         end
       end
       genre_count
     end

def self.artists #method returns an array of ONLY UNIQUE artists, no duplicates.
    @@artists.uniq
  end

def artist_count
end


end
