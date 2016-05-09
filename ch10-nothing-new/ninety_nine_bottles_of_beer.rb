def print_song(bottle_num)
        if bottle_num < 0
            bottle_num = 0 
        end
        
        return "" if bottle_num == 0
        
        while bottle_num > 0 
            if bottle_num > 2
                puts "#{english_number(bottle_num).capitalize} bottles of beer on the wall,\n#{english_number(bottle_num).capitalize} bottles of beer,\nTake one down, pass it around,\n#{english_number(bottle_num-1).capitalize} bottles of beer on the wall."
            elsif bottle_num == 2
                puts "Two bottles of beer on the wall,\nTwo bottles of beer,\nTake one down, pass it around,\nOne bottle of beer on the wall."
            elsif bottle_num == 1
                puts "One bottle of beer on the wall,\nOne bottle of beer,\nTake one down, pass it around,\nZero bottles of beer on the wall."
            end
        bottle_num -= 1
        end
end

def english_number (digits)
  return 'zero' if digits == 0
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
               quattuorvigintillion quinvigintgotillion sexvigintillion
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
            words << "#{ teens[trio % 10 - 1] }"
            trio = 0
        else
                if trio - ((trio/10) * 10) > 0
                    words << "#{ tens[trio/10 - 1] }-" + "#{ ones[(trio - ((trio/10) * 10)) - 1 ] }"
                    trio = 0
                else
                    words << "#{ tens[trio/10 - 1] }"
                    trio -= (trio/10) * 10
                end
        end
      else
        words << "#{ ones[trio - 1 ] }"
        trio = 0
      end
    end
    if chunks.length > 1 && !illions.include?(words[-1])
      words << "#{ illions[chunks.length - 2] }"
    end
    chunks.shift
  end
  words.join(" ")
end











#“Ninety-nine Bottles of Beer on the Wall.” Using english_number and your old
#program on page 49, write out the lyrics to this song the right way this
#time. Punish your computer: have it start at 9999. (Don’t pick a number
#too large, though, because writing all of that to the screen takes your
#computer quite a while. A hundred thousand bottles of beer takes some
#time; and if you pick a million, you’ll be punishing yourself as well!)