require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'

class ApartmentTest < MiniTest::Test

  def test_it_exists
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_instance_of Apartment, a1
  end

  def test_it_can_access_attributes
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal "A1", a1.number
    assert_equal 1200, a1.monthly_rent
    assert_equal 1, a1.bathrooms
    assert_equal 1, a1.bedrooms
    assert_nil a1.renter
  end

  def test_we_can_add_renter
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    jessie = Renter.new("Jessie")

    a1.add_renter(jessie)

    assert_equal a1.renter, jessie
  end
end
