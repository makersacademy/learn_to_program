def roman_to_integer roman

  ref = { :M =>1000,
          :CM => 900,
          :DCCC => 800,
          :DCC => 700,
          :DC => 600,
          :D => 500,
          :CD => 400,
          :CCC => 300,
          :CC => 200,
          :C => 100,
          :XC => 90,
          :LXXX => 80,
          :LXX => 70,
          :LX => 60,
          :L => 50,
          :XL => 40,
          :XXX => 30,
          :XX => 20,
          :X => 10,
          :IX => 9,
          :VIII => 8,
          :VII => 7,
          :VI => 6,
          :V => 5,
          :IV => 4,
          :III => 3,
          :II => 2,
          :I => 1}

  results = roman.upcase.match( /(?<thousands>M{0,4})(?<hundreds>CM|CD|D?C{0,3})(?<tens>XC|XL|L?X{0,3})(?<units>IX|IV|V?I{0,3})/).to_a

  return "Not a valid roman number" if results[0].empty?

  result = (1..results.size-1).inject (0) {|result, val| result + (results[val].empty? ? 0 : ref[results[val].to_sym])  }
  result

end

puts roman_to_integer('MCMXCIX')
puts roman_to_integer('ABCED')
puts roman_to_integer('iii')


