def roman_to_integer roman
  roman_hash = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
  
  total = 0
  prev = 0
  roman.upcase!
  roman.reverse!
  
  
  roman.each_char.with_index do |x, y| 
    a = ["I", "V", "X", "L","C","D","M"].include?(x)
    val = roman_hash[x]
    if a == false
      puts "sorry input '#{roman}' contains characters that are not roman numerals"
      return
    end
    
    if val < prev
      val *= -1
    else
      prev = val
    end
      total += val
  end
  total
end

      


roman_to_integer("IV")
roman_to_integer("iv")
roman_to_integer("hello")
roman_to_integer("ivlcdmx")