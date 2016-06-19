def roman_to_integer (roman)
  # your code here
  # roman values: M = 1000
  #               D = 500
  #               C = 100
  #               L = 50
  #               X = 10
  #               V = 5
  #               I = 1
  #wants integer 1999 in numerals
  #hash to assign values to characters
  #
  roman.downcase
  roman_values ={'i' =>1,'v' => 5,'x' => 10,'l' =>50,'c' =>100,'d' =>500,'m' =>1000}
  
  total = 0
  prev = 0
  index = roman.length - 1
  while index >= 0
    c = roman[index].downcase
    index = index - 1
    val = digit_vals[c]
    if !val
      puts 'Non-valid character present'
      return
    end

    if val < prev
      val = val * -1
    else
      prev = val
    end
    total = total + val
  end

  total
end
  
