def roman_numeral num

    thousands = num / 1000
    hundreds_left = num % 1000
    hundreds = hundreds_left / 100
    tens_left = num % 100
    tens = tens_left / 10
    units = num % 10

    if hundreds >= 5
      five_hundreds = hundreds / 5
      hundreds = hundreds - 5
    else
      five_hundreds = 0
    end

    if tens >= 5
      fifties = tens / 5
      tens = tens - 5
    else
      fifties = 0
    end

    if units >= 5 && units < 9
      fives = units / 5
      units = units - 5
    else
      fives = 0
    end

    if units == 4
      fours = 1
      units = 0
    else
      fours = 0
    end

    if units == 9
      nines = 1
      units = 0
    else
      nines = 0
    end

    return 'M'*thousands + 'D'*five_hundreds + 'C'*hundreds + 'L'*fifties + 'X'*tens + 'IX'*nines + 'V'*fives + 'IV'*fours + 'I'*units

end
