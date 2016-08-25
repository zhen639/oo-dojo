class Trip
  attr_reader :bicycles, :customers, :vehicle

  #original
  # def prepare(mechanic)
  #   mechanic.prepare_bicycles(bicycles)
  # end

  #COMPLATED AFTER ADDING DEPENDENCIES
  def prepare(preparers)
    preparers.each do |preparer|
      case preparer 
        when Mechanic
          preparer.prepare_bicycles(bicycles)
        when TripCoordinator
          preparer.buy_food(customers)
        when Driver
          preparer.gas_up(vehicle)
          preparer.fill_water_tank(vehicle)
      end
    end
  end

  #duck type
  # noinspection RubyResolve
  def prepare_duck_type(preparers)
    preparers.each {|preparer| preparer.prepare_trip(self)}
  end
end