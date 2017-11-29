module Memorable
  class Song
    def reset_all
      @@songs.clear
    end

    def count
      self.all.count
    end
  end

class Artist
  def count
    @@artists.count
  end

  def reset_all
    self.all.clear
  end
end
end
