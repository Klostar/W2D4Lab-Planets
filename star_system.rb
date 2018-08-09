class StarSystem
  attr_reader :name, :planets

  def initialize(name,planets)
    @name = name
    @planets = planets
  end

  def planet_names
    return @planets.map {|planets| planets.name}
  end

  def get_planet_by_name(name)
    return @planets.find{|planet| planet.name == name}
  end

  def get_largest_planet
    return @planets.max_by{|planet| planet.diameter}
  end

  def get_smallest_planet
    return @planets.min_by{|planet| planet.diameter}
  end

  def get_planets_with_no_moons
    return @planets.find_all{|planets| planets.number_of_moons == 0}
  end

  def get_planets_with_more_moons(number)
    more_moons = @planets.find_all{|planets| planets.number_of_moons > number}
    return more_moons.map{|planet| planet.name}
  end

  def get_number_of_planets_closer_than(number)
    planets_closer_than = @planets.find_all{|planets| planets.distance_from_sun < number}
    planets_closer_than.map{|planet| planet.name}.count
  end

  def get_total_number_of_moons
    return @planets.reduce(0){|total,planet| planet.number_of_moons + total}
  end

  def get_planet_names_sorted_by_increasing_distance_from_sun
    planets_from_sun = @planets.sort_by{|planets| planets.distance_from_sun}
    return planets_from_sun.map{|planet| planet.name}
  end

def get_planet_names_sorted_by_size_decreasing
  planets_from_sun_backwards = @planets.sort_by{|planets| planets.diameter}
  return planets_from_sun_backwards.map{|planet| planet.name}.reverse!
end

end
