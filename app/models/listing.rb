class Listing < ActiveRecord::Base
    belongs_to :host, :class_name => "User"
    belongs_to :neighborhood
    has_many :reviews
end