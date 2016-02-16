ROM_VAL = {"i"=>1, "v" => 5, "x" => 10, "l" =>50, "c" => 100, "d" => 500, "m"=>1000}

def roman_to_integer roman
  num_arr = roman.downcase.split("").inject([]){|arr, c| arr.push(ROM_VAL[c]) }

  sum = 0
  while num_arr !=[]
    a = num_arr.max
    if num_arr[0] == a
      sum += num_arr[0]
      num_arr.shift
    elsif num_arr[1] == a
      subt = num_arr[1] - num_arr[0]
      sum += subt
      num_arr.shift(2)
    else
      puts "Numerals in wrong order"
      exit
    end
  end
  sum

end

p roman_to_integer 'mcmxcix'