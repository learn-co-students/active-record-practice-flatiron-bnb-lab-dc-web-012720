class Reservation < ActiveRecord::Base
    belongs_to :guest, :class_name => "User"
    has_many :reviews, :foreign_key => 'guest_id'
end