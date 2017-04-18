def english_number number
  error = "zero"
  return error unless number.is_a? Integer
  return error unless number > 0
  chunks = []
  while number/1000 > 0
    chunks.unshift(number % 1000)
    number /= 1000
  end
  chunks.unshift(number) if number > 0 
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
        words << " #{ ones[trio/100 - 1] } hundred"
        trio -= (trio/100) * 100
      elsif trio/10 > 0
        if trio/10 == 1
            if trio == 10 
                words << " #{tens[0]}"
                trio = 0 
            else
            words << " #{ teens[trio % 10 - 1] }"
            trio = 0
        end
        else
            
            words << " #{ tens[trio/10 - 1] }"
            trio -= (trio/10) * 10
            
        end
        else
            if  !words.empty? && !words[-1].include?("hundred")
                words << "-#{ ones[trio - 1 ] }"
                trio = 0
            else
                words << " #{ ones[trio - 1 ] }"
                trio = 0
            end
      end
    end
    if chunks.length > 1 && chunks.first != 0
      words << " #{ illions[chunks.length - 2] }"
    end
    chunks.shift
  end
  words.join.strip
end