

def roman_to_integer(roman)
roman.upcase!
if (roman !~ /[MDCLXVI]/) 
  return "This is not a roman number"
end
number = 0
key = Hash[[["M", 1000],["D", 500],["C", 100],["L",50],["X", 10],["V", 5]]]
key["I"] = (roman[-1]=="V" ? -1 : roman[-1] == "X" ? -1 : 1)

specials = Hash[[["CMXCIX",999],["CDXCIX", 499],["XCIX", 99],["XLIX", 49]]]

specials.keys.each do |a|
  if roman[a]!=nil
    roman.slice!(a)
    number += specials[a]
  end
end 
  
  roman.each_char do |i|
    number += key[i]
  end


return number

end

