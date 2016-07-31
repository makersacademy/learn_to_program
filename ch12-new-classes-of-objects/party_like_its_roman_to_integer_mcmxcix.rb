def roman_to_integer roman
  roman.upcase!
  num = 0
  current_pos = (-1)
  current_num = 0
  rom_dict = {  "M" => 1000,
                "D" => 500,
                "C" => 100,
                "L" => 50,
                "X" => 10,
                "IX" => 9,
                "V" => 5,
                "IV" => 4,
                "I" => 1  }

    while current_num != nil
      current_num = roman[current_pos]


      if ((current_num == "V" || current_num == "X") && roman[current_pos - 1] == "I")
        current_num = roman[current_pos-1..current_pos]
        current_pos = current_pos - 2

        num = num + rom_dict[current_num].to_i
      elsif (current_num == "C" && roman[current_pos - 1] == "X")
        current_pos = current_pos - 2
        num = num + 90
      elsif (current_num == "M" && roman[current_pos - 1] == "C")
        current_pos = current_pos - 2
        num = num + 900
      else

        num = num + rom_dict[current_num].to_i
        current_pos = current_pos - 1
      end

    end
    return num
end

#roman_to_integer("IV")
#roman_to_integer("IX")

#roman_to_integer("XIV")
#roman_to_integer("XIX")

#roman_to_integer("cxix")
