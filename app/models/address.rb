class Address < ActiveRecord::Base
  attr_accessible :add1, :add2, :address_type, :city, :state, :zip

  belongs_to :addressable, polymorphic: true
end
