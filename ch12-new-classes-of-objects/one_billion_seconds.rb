time = Time.new
puts "Seconds from birth: #{(time - Time.mktime(1986, 5, 29)).round(1)}"
puts "Years to a billion second: #{((Time.mktime(1986, 5, 29) - time + 1000000000) / (60 * 60 * 24 * 365)).round(1)}"
