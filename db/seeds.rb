
require_relative '../config/environment.rb'

City.delete_all
Neighborhood.delete_all
User.delete_all
Listing.delete_all
Reservation.delete_all


seoul = City.create(name: "Seoul")
n1 = Neighborhood.create(name: 'Ramen', city: seoul)
n2 = Neighborhood.create(name: 'Jjajang', city: seoul)
amanda = User.create(name: 'Amanda')
ralph = User.create(name: 'Ralph')
l1 = Listing.create(
    address: '123 Main Street',
    listing_type: "private room",
    title: "Beautiful Apartment on Main Street",
    description: "My apartment is great. there's a bedroom. close to subway....blah blah",
    price: 50.00,
    neighborhood: n1,
    host: amanda
)
l2 = Listing.create(
    address: 'fruit street',
    listing_type: "public room",
    title: "Disgusting Apartment on Main Street",
    description: "My apartment is trash. there's a bedroom. close to subway....blah blah",
    price: 100.00,
    neighborhood: n2,
    host: ralph
)

r1 = Reservation.create(
    checkin: '2014-04-25',
    checkout: '2014-04-30',
    listing: l1,
    guest: ralph
  )

r2 = Reservation.create(
    checkin: '2015-04-25',
    checkout: '2015-04-30',
    listing: l2,
    guest: amanda
  )