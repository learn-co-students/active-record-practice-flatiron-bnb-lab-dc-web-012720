<!--! Table Requirements -->

Review.create(
      description: "This place was great!",
      rating: 5,
      guest: logan,
      reservation: reservation
    )
Reservation.create(
      checkin: '2014-04-25',
      checkout: '2014-04-30',
      listing: listing,
      guest: logan
    )
User.create(name: "Katie") 
Neighborhood.create(name: 'Brighton Beach', city: nyc)
City.create(name: 'NYC') 
Listing.create(
      address: '123 Main Street',
      listing_type: "private room",
      title: "Beautiful Apartment on Main Street",
      description: "My apartment is great. there's a bedroom. close to subway....blah blah",
      price: 50.00,
      neighborhood: financial_district,
      host: amanda
    )

<!-- ! Model Requirements -->
<!-- *City -->
<!-- nyc.name -->
<!-- nyc.neighborhoods -->
<!-- nyc.listings -->
<!-- *Listing -->
<!-- listing.title -->
<!-- listing.description -->
<!-- listing.address -->
<!-- listing.listing_type -->
<!-- listing.price -->
<!-- listing.neighborhood -->
<!-- listing.niehgborhood.name -->
<!-- listing.host -->
<!-- listing.host.name -->
listing.reservations
listing.reviews
listing.guest
<!-- *neighborhoods -->
self.name
self.city
self.listings
<!-- *Reservation -->
reservation.checkin
reservation.checkout
reservation.guest
reservation.listing

<!-- *Reviews -->
review.description
review.rating
review.guest
review.reservation
<!-- *Users -->
user.name
user.listings
user.reservations
user.trips
user.reviews