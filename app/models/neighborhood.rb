class Neighborhood < ActiveRecord::Base
    belongs_to :city
    has_many :listings
    has_many :hosts, through: :listings

end