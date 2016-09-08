def roman_to_integer roman
  # check if argument is valid roman numerals
  if roman =~ /[^MDCLXVImdclxvi]/
    puts "Not valid Roman numerals"
  else
    idx = 0
    integer = 0
    all_roman = roman.upcase

    while idx < roman.length
      integer = integer + 1000 if all_roman[idx] == "M"
      integer = integer + 500  if all_roman[idx] == "D"
      integer = integer + 100  if all_roman[idx] == "C"
      integer = integer + 50   if all_roman[idx] == "L"
      integer = integer + 10   if all_roman[idx] == "X"
      integer = integer + 5    if all_roman[idx] == "V"
      integer = integer + 1    if all_roman[idx] == "I"
      idx += 1
    end

    integer = integer - 200 if all_roman.include?("CM") || all_roman.include?("CD")
    integer = integer - 20  if all_roman.include?("XC") || all_roman.include?("XL")
    integer = integer - 2   if all_roman.include?("IX") || all_roman.include?("IV")

    integer
  end

end