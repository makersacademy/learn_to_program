b_day = (Time.new) - Time.gm(1994, 1, 30)
p b_day.to_i

p turning_ancient = Time.at(((10 ** 9) - b_day.to_i) + Time.new.to_i)
