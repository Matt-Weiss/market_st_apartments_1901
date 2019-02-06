class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    total_rent = @units.inject(0) do |sum, unit|
      sum + unit.monthly_rent
    end
    average_rent = total_rent.to_f / @units.length
  end

  def renter_with_highest_rent
    occupied_units = @units.select do |unit|
      unit.renter != nil
    end
    occupied_units.compact!

    highest_rent = occupied_units.max_by do |unit|
        unit.monthly_rent
    end


    highest_rent.renter
  end

end
