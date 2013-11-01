class Store < ActiveRecord::Base
  attr_accessible :name, :phone, :website

  has_one :biling_address, :as => :addressable, :conditions => {:address_type => "billing"}
  has_one :physical_address, :as => :addressable, :conditions => {:address_type => "physical"}


  def physical_address
    addresses.where(address_type: 'physical').first
  end

  def physical_address=(physical)
    address.address_type = 'physical'
    addresses << address
  end

  def billing_address
    addresses.where(address_type: 'billing').first
  end

  def billing_address=(address)
    address.address_type = 'billing'
    addresses << address
  end
end
