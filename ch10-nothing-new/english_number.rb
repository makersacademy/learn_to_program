
def english_number(digits)
  error = "zero"
  return error unless digits.is_a? Integer
  return error unless digits > 0
  chunks = []
  while digits/1000 > 0
    chunks.unshift(digits % 1000)
    digits /= 1000
  end
  chunks.unshift(digits) if digits > 0
  ones    = %w(one two three four five six seven eight nine)
  teens   = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen
               eighteen nineteen)
  tens    = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
  illions = %w(thousand million billion trillion quadrillion quintillion
               sextillion septillion octillion nonillion decillion undecillion
               duodecillion tredecillion quattuordecillion quindecillion
               sexdecillion septendecillion octodecillion novemdecillion
               vigintillion unvigintillion dovigintillion trevigintillion
               quattuorvigintillion quinvigintillion sexvigintillion
               septenvigintillion octovigintillion novemvigintillion
               trigintillion untrigintillion dotrigintillion tretrigintillion
               quattuortrigintillion quintrigintillion sextrigintillion
               septentrigintillion octotrigintillion novemtrigintillion)
  words = []
  while chunks.length > 0
    trio = chunks.first
    while trio > 0
      if trio/100 > 0
        words << "#{ ones[trio/100 - 1] } hundred"
        trio -= (trio/100) * 100
      elsif trio/10 > 0
        if trio/10 == 1 && trio != 10
            words << "#{ teens[trio % 10 - 1]}"
            trio = 0
        else
            words << "#{ tens[trio/10 - 1]}"
            trio -= (trio/10) * 10
        end
      else
        if words.empty? || words[-1].include?("hundred")
          words << "#{ones[trio - 1 ]}"
        else
          words[-1] << "-#{ones[trio - 1 ]}"
        end
        trio = 0
      end
    end
    if chunks.length > 1 && !illions.include?(words[-1])
      words << "#{ illions[chunks.length - 2] }"
    end
    chunks.shift
  end
  words.join(' ')
end

p english_number(14934985875927857530927582775028729754657645026450395)

