def roman_to_integer(roman)
  roman.downcase!
  sum = 0
  number = {"i" => 1, "iv" => 4, "v" => 5, "ix" => 9, "x" => 10, "xl" => 40, "l" => 50, "xc" => 90, "c" => 100, "cd" => 400, "d" => 500, "cm" => 900, "m" => 1000}
  
  # Sort values into pairs
  paired_array = roman.split("").map.with_index {|x,i| x + roman[i+1] if i < roman.length - 1}
  paired_array.pop
  matches = []
  
 # Search for any pairs that match a hash key, adding value to sum if they occur
  number.each do |k,v|
    paired_array.each do |n|
      if n == k
        matches.push(n)
        sum += v
      end
    end
  end

  # Remove matching pairs from the original string
  matches.each do |match|
    roman.gsub!(match, '')
  end
  # Create a new array having removed the pairs
  remaining = roman.split("")
  
  # Loop over the new array
  number.each do |k,v|
    remaining.each do |n|
      sum += v if n == k
    end
  end
  p sum
end