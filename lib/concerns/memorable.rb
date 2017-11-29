module Memorable
  class Song
    def self.reset_all
      @@songs.clear
    end

    def self.count
      self.all.count
    end
  end

class Artist
  def self.count
    @@artists.count
  end

  def self.reset_all
    self.all.clear
  end
end
end
