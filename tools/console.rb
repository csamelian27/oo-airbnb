require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ny = Listing.new("New York")
sf = Listing.new("San Francisco")
chi = Listing.new("Chicago")

mar = Guest.new("Mariel")
hel = Guest.new("Helen")
prin = Guest.new("Prince")
mich = Guest.new("Michelle")

trip1 = Trip.new(ny, mar, "2 weeks")
trip2 = Trip.new(sf, mar, "3 months")
trip3 = Trip.new(ny, hel, "1 day")
trip4 = Trip.new(chi, prin, "1 year")
trip5 = Trip.new(chi, hel, "2 days")
trip6 = Trip.new(ny, prin, "8 weeks")
trip7 = Trip.new(ny, mich, "5 days")

binding.pry
