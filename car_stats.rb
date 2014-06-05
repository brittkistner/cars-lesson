class CarStats
  def self.calc_top_color(cars)
# 1. count each color
# 2. sort the counts
# 3. pick the greatest count
# 4. return that color

# turn hash into an array, then sort_by the value, then return the first value of the first array
    new_hash = cars.group_by{|x| x.color}
    hash_2 = new_hash.to_a.sort_by{|k,v| v.length}
    hash_2[-1][0]
  end

  def self.calc_bottom_color(cars)
    new_hash = cars.group_by{|x| x.color}
    hash_2 = new_hash.to_a.sort_by{|k,v| v.length}
    hash_2[0][0] #what if there were mulitple colors only represented once in the @cars array?
  end
  # calculate the most and least popular colors from an array of cars
end
