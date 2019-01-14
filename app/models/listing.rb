class Listing

  attr_reader :city

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select {|trip| trip.listing == self}
  end

  def guests
    self.trips.map {|trip| trip.guest}
  end

  def trip_count
    self.trips.count
  end

  def self.find_all_by_city(city)
    Listing.all.select {|list| list.city == city}
  end

  def self.most_popular
    sorted = Trip.all.sort_by {|trip| trip.listing.trip_count}
    most_pop = sorted.max {|a, b| a.listing.trip_count <=> b.listing.trip_count}
    most_pop.listing.city
  end

end
