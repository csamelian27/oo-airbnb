class Trip

  attr_accessor :listing, :guest, :duration

  @@all = []

  def initialize(listing, guest, duration)
    @listing = listing
    @guest = guest
    @duration = duration
    @@all << self
  end

  def self.all
    @@all
  end

end
