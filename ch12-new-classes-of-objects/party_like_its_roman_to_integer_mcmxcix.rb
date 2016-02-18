def roman_to_integer roman
  return "Sorry, that is not a roman numeral" if roman =~ (/[^MDCLXVI]/i)
  roman = roman.upcase
  result = 0
  if roman =~ (/CM/)
    roman.sub!(/CM/,"")
    result = result + 900
  end
  if roman =~ (/CD/)
    roman.sub!(/CD/,"")
    result = result + 400
  end
  if roman =~ (/XC/)
    roman.sub!(/XC/,"")
    result = result + 90
  end
  if roman =~ (/XL/)
    roman.sub!(/XL/,"")
    result = result + 40
  end
  if roman =~ (/IX/)
    roman.sub!(/IX/,"")
    result = result + 9
  end
  if roman =~ (/IV/)
    roman.sub!(/IV/,"")
    result = result + 4
  end
  result = result + 1000*(roman.count "M")
  result = result + 500*(roman.count "D")
  result = result + 100*(roman.count "C")
  result = result + 50*(roman.count "L")
  result = result + 10*(roman.count "X")
  result = result + 5*(roman.count "V")
  result = result + (roman.count "I")
  return result
end
