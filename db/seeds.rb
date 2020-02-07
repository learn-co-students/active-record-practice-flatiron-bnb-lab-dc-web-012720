require_relative '../config/environment.rb'

ann = User.find_or_create_by(name: "Ann")
bob = User.find_or_create_by(name: "Bob")
joe = User.find_or_create_by(name: "Joe")

seattle = City.find_or_create_by(name: "Seattle")
dc = City.find_or_create_by(name: "Washington D.C.")
kc = City.find_or_create_by(name: "Kansas City")
nyc = City.find_or_create_by(name: "New York City")

nhood1 = Neighborhood.find_or_create_by(name: "hood city 1", city_id: seattle.id)
nhood2 = Neighborhood.find_or_create_by(name: "hood city 2", city_id: dc.id)
nhood2 = Neighborhood.find_or_create_by(name: "hood city 3", city_id: kc.id)
nhood3 = Neighborhood.find_or_create_by(name: "hood city 4", city_id: nyc.id)

listing1 = Listing.find_or_create_by(listing_type: "private room", title: "Beautiful Apartment On Main Street", description: "My apartment is great... close to subway", price: 50.00, neighborhood_id: nhood1.id)
listing2 = Listing.find_or_create_by(listing_type: "trap_house", title: "...hood", description: "My apartment isn't safe", price: 9.99, neighborhood_id: nhood1.id)

reservation1 = Reservation.find_or_create_by(checkin: '2020-05-20', checkout: '2021-05-20', listing_id: listing1.id, guest_id: ann.id)
reservation2 = Reservation.find_or_create_by(checkin: '2009-01-19', checkout: '2009-01-20', listing_id: listing1.id, guest_id: joe.id)


review1 = Review.find_or_create_by(description: "This place was amazing!!!", rating: 10, guest_id: joe.id, reservation_id: reservation1.id)
review2 = Review.find_or_create_by(description: "Gunshots everywhere, it was lit tho", rating: 1, guest_id: ann.id, reservation_id: reservation2.id)