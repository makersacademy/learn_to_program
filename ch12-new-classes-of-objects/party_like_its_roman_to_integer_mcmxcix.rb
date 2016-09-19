def roman_to_integer roman
  roman_lookup = Hash.new
  roman_lookup['M'] = 1000
  roman_lookup['D'] = 500
  roman_lookup['C'] = 100
  roman_lookup['L'] = 50
  roman_lookup['X'] = 10
  roman_lookup['V'] = 5
  roman_lookup['I'] = 1

  roman_valid = ['M','D','C','L','X','V','I']

  roman.upcase!
  num_val = Array.new
  to_convert = roman.split(//)

  to_convert.each do |check|
    if roman_valid.include?(check) == false
      puts 'Not a valid Roman Numeral'
      exit
    end
  end

  #converting to numberical values
  to_convert.each do |sym|
    if num_val.length == 0
      num_val.push(roman_lookup[sym])
    elsif num_val.last.to_i < roman_lookup[sym].to_i
      new_num_val_last = -1 * num_val.pop
      num_val.push(new_num_val_last)
      num_val.push(roman_lookup[sym])
    else
      num_val.push(roman_lookup[sym])
    end
  end
num_val.reduce(:+)
end

#puts 'Simple'
#puts
#puts roman_to_integer('I')
#puts roman_to_integer('V')
#puts roman_to_integer('VI')
#puts roman_to_integer('CXI')
#puts roman_to_integer('DLXIII')
#puts
#puts 'Harder'
#puts roman_to_integer('IV')
#puts roman_to_integer('IX')
#puts roman_to_integer('XIV')
#puts roman_to_integer('XL')
#puts roman_to_integer('XCIV')
#puts roman_to_integer('MMCMXCIX')
puts roman_to_integer('MMCMXCITX')
