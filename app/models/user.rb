class User < ActiveRecord::Base 
    has_many :listings, class_name: "User", foreign_key: "host_id"
    has_many :reservations, class_name: "User", foreign_key: "guest_id"
    has_many :reviews, class_name: "User", foreign_key: "guest_id"
end