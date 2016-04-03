def roman_to_integer roman
  v_ones = false
  v_tens = false
  v_hunds = false
  v_thou = false
  to_return = ""
  ones_place = ""
  tens_place = ""
  hundreds_place = ""
  thousands_place = ""
  roman = roman.upcase

#validation (i went down the wrong tree)
digit_vals = {'i' => 1,
              'v' => 5,
              'x' => 10,
              'l' => 50,
                'c' => 100,
              'd' => 500,
              'm' => 1000}

index = roman.length - 1
while index >= 0
  c = roman[index].downcase
  index = index - 1
  val = digit_vals[c]
  if !val
    puts 'This is not a valid roman numeral!'
    exit
    return
  end
end


#ones_place

  ones_hash = {
    1 => "I",
    2 => "II",
    3 => "III",
    4 => "IV",
    5 => "V",
    6 => "VI",
    7 => "VII",
    8 => "VIII",
    9 => "IX"
    }

  ones_hash.each do |key, value|

    if roman.include? value
      ones_place = key.to_s
      v_ones = true
    end
  end

  if roman.include? "IV"
    tens_place = "4"
  end


  tens_hash = {
    1 => "X",
    2 => "XX",
    3 => "XXX",
    4 => "XL",
    5 => "L",
    6 => "LX",
    7 => "LXX",
    8 => "LXXX",
    9 => "XC"
    }

    tens_hash.each do |key, value|
      if roman.include? value
        tens_place = key.to_s
        v_tens = true
      end
    end

    if roman.include? "XL"
      tens_place = "4"
    end
#hundreds_place

  hundreds_hash = {
    1 => "C",
    2 => "CC",
    3 => "CCC",
    4 => "CD",
    5 => "D",
    6 => "DC",
    7 => "DCC",
    8 => "DCCC",
    9 => "CM"
    }

  hundreds_hash.each do |key, value|
      if roman.include? value
        hundreds_place = key.to_s
        v_hunds = true
      end
    end

    if roman.include? "CD"
      tens_place = "4"
    end

#thousands
    counter = 0
    tracker = false
    tracker = true if roman[0] == "M"


  roman.each_char do |c|

    if c == "M" && tracker == true
      counter = counter + 1
    else
      tracker = false
    end

  end

  if counter > 0
    v_thou = true
    thousands_place = counter.to_s
  end



#checks if there ought to be zeros

if v_ones == false && v_tens
  ones_place = "0"
end

if v_tens == false && v_hunds
  tens_place = "0"
end

if v_hunds == false && v_thou
  hundreds_place = "0"
end


#putting them together
if v_ones = false && v_tens = false && v_hunds = false && v_thou = false
  exit
end

to_return = thousands_place + hundreds_place + tens_place + ones_place
to_return.to_i

end

p roman_to_integer("IX")
