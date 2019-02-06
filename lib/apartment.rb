class Apartment

  def initialize(attributes)
    @attributes = attributes
  end

  def number
    @attributes[:number]
  end

  def monthly_rent
    @attributes[:monthly_rent]
  end

  def bathrooms
    @attributes[:bathrooms]
  end

  def bedrooms
    @attributes[:bedrooms]
  end

  def renter
    @attributes[:renter]
  end

  def add_renter(renter_name)
    @attributes[:renter] = renter_name
  end

end
