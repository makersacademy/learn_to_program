def roman_to_integer roman
  return 0 if roman.empty?
  #set a hash for storing values of roman numbers
  rh = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
  #create array with reversed roman numbers in uppercase
  roman_a = roman.upcase.each_char.to_a.reverse
  pos, final_number = 0, 0
  roman_a.each do |elem|
    if pos == 0 then final_number = rh[roman_a[pos]] #store value of first elem
    else
      #if value of previous elem > value of current elem, the current elem needs
      #to be deducted from sum, otherwise value of current elem needs to be added to sum
      rh[roman_a[pos - 1]] > rh[elem] ? final_number -= rh[elem] : final_number += rh[elem]
    end
    pos += 1
  end
  final_number
end
