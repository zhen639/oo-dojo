class Driver
  def gas_up(vehicle)
    #code
  end

  def fill_water_tank(vehicle)
    #code
  end

  def prepare_trip(trip)
    vehicle = trip.vehicle
    gas_up(vehicle)
    fill_water_tank(vehicle)
  end
end