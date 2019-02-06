require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'

class RenterTest < MiniTest::Test

  def test_it_exists
    jessie = Renter.new("Jessie")

    assert_instance_of Renter, jessie
  end
end
