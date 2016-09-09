def roman_checker year

  checker = year.length

  if year[0..checker] == "M" || "C" || "X" || "I" || "D"
    ba = true
  else
    ba = false
  end

  if ba == true
    puts "May you live many long and prosperous roman numeral years"
  else
    puts "YOU HAVE DISHONORED YOUR FAMILY WITH THE USE OF NON ROMANIC SYMBOLS!"
  end

end

 roman_checker "MCNES"
 roman_checker "M"