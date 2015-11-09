# “Modern” Roman numerals. Eventually, someone thought it would be ter- ribly clever if putting a smaller number before a larger one meant you had to subtract the smaller one. As a result of this development, you must now suffer. Rewrite your previous method to return the new-style Roman numerals so when someone calls roman_numeral 4, it should return 'IV'.

def roman_numeral num
  many_thousands = num / 1000
  num -= many_thousands * 1000

  many_fundreds = num / 500
  num -= many_fundreds * 500

  many_hundreds = num / 100
  num -= many_hundreds * 100

  many_fifties = num / 50
  num -= many_fifties * 50

  many_tens = num / 10
  num -= many_tens * 10

  if num == 9
    many_fives = 0
    num = 0
    special_value = "IX"
  elsif num == 4
    many_fives = 0
    num = 0
    special_value = "IV"
  else
    many_fives = num / 5
    num -= many_fives * 5
  end

    "#{"M" * many_thousands}#{"D" * many_fundreds}#{"C" * many_hundreds}#{"L" * many_fifties}#{"X" * many_tens}#{"V" * many_fives}#{"I" * num}#{special_value}"
end
