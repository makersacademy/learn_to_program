require_relative "slice_by.rb"

def english_number num
  return "zero" if num == 0
  output = ''
  units = {"9" => "nine", "8" => "eight", "7" => "seven", "6" => "six", "5" => "five", "4" => "four", "3" => "three", "2" => "two", "1" => "one", "0" => ""}
  teens = {"9" => "nineteen", "8" => "eighteen", "7" => "seventeen", "6" => "sixteen", "5" => "fifteen", "4" => "fourteen", "3" => "thirteen", "2" => "twelve", "1" => "eleven"}
  tens = {"9" => "ninety", "8" => "eighty", "7" => "seventy", "6" => "sixty", "5" => "fifty", "4" => "forty", "3" => "thirty", "2" => "twenty", "1" => "ten", "0" => ""}
  scale = {3 => 'thousand', 6 => 'million', 9 => 'billion', 12 => 'trillion', 15 => 'quadrillion', 18 => 'quintillion', 21 => 'sextillion', 24 => 'septillion', 27 => 'octillion', 30 =>'nonillion', 33 => 'decillion', 36 => 'undecillion', 39 => 'duodecillion', 42 => 'tredecillion', 45 => 'quattuordecillion', 48 => 'quindecillion'}
  
    splits = slice_by num, 3
    scaler = splits.flatten.length
    check_digit = false
    splits.each do |x| 
      x.each.with_index do |value,index|
        if index == 0
          output << units[value] + ' hundred ' if value != '0'
        end
        if index == 1
          output << tens[value] unless value == '1' && x[2] != '0'
          output << '-' if (value != '1' && value != '0') && x[2] != '0'
          output << teens[x[2]] if value == '1' && x[2] != '0'
        end
        if index == 2
          output << units[value] if x[1] != '1'
          value != "0" || x[1] != "0" ? (check_digit = true) : (check_digit = false)
        end
      end
      if scaler > 3
          scaler -= 3 
      output << " #{scale[scaler]} " if check_digit
  end
    end
  output[-1] = '' if output[-1] == ' '
  output
end