

def one_billion_seconds(birth_date)

  birth_date + 1000000000
end


birth_time = Time.new(1971, 8, 7, 5, 27, 0, 0)

puts one_billion_seconds(birth_time).inspect

