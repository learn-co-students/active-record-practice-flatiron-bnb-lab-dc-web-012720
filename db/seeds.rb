require 'pry'
require 'faker'
require_relative "../config/environment.rb"



user1 = User.find_or_create_by(name: "John")
user2 = User.find_or_create_by(name: "Jacob")
user3 = User.find_or_create_by(name: "Smith")

list1 = Listing.find_or_create_by(address:"740 Hahn Square", listing_type:"Private Room", title: "Marriot", description: "The best place to sleep!", price: 300.21)
list2 = Listing.find_or_create_by(address:"77278 Rudy Grove", listing_type:"Public Room", title: "Hyatt", description: "The best place to vacation!", price: 299.21)
list3 = Listing.find_or_create_by(address:"31438 Roberts Highway", listing_type:"Party Room", title: "SkyLofts", description: "The best place to sleep in the sky!", price: 5070.21)

res1 = Reservation.find_or_create_by(checkin: "2014-04-25", checkout: "2014-04-28", lisitng: list1)
res2 = Reservation.find_or_create_by(checkin: "2014-04-25", checkout: "2014-04-28", lisitng: list2)
res3 = Reservation.find_or_create_by(checkin: "2014-04-25", checkout: "2014-04-28", lisitng: list3)

binding.pry