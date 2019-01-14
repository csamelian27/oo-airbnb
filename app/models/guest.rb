class Guest

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select {|trip| trip.guest == self}
  end

  def listings
    self.trips.map {|trip| trip.listing}
  end

  def trip_count
    self.trips.count
  end

  def self.pro_traveler
    pro_travels = Trip.all.select {|trip| trip.guest.trip_count > 1}
    pro_travels.map {|trip| trip.guest.name}.uniq
    # Wasn't certain if these were seeking the unique guest names (as above), or all guest instances (as below)
    # pro_travels = Trip.all.select {|trip| trip.guest.trip_count > 1}
  end

  def self.find_all_by_name(name)
    Guest.all.select {|guest| guest.name == name}
  end

end
