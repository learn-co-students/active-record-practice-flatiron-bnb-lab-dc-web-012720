class User < ActiveRecord::Base
    
    has_many :listings, :foreign_key => 'host_id' #host

    has_many :reviews, :foreign_key => 'guest_id' #one of these are wrong
    has_many :reservations, through: :listings #host path for reservation
    has_many :trips, :class_name => 'Reservation', :foreign_key => 'guest_id' #guest path for reservation
    

end