class Song
@@count = 0


def initialize
  attr_accessor :name, :artist, :genre
@@count += 1
end

def self.count
@@count
end
end
