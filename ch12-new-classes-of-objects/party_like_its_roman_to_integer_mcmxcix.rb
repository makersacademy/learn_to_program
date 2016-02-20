def roman_to_integer roman
  total = 0
  hash = {"M"=>1000,"D"=>500,"C"=>100,"L"=>50,"X"=>10,"V"=>5,"I"=>1}
  roman.upcase!
  return "Not a valid numeral" if roman =~ /[^MDCLXVI]/

  for i in 0...roman.length
    if i == roman.length - 1
      total += hash[roman[i]]
    elsif hash[roman[i]] < hash[roman[i+1]]
      total -= hash[roman[i]]
    else
      total += hash[roman[i]]
    end
  end


    total
end

#puts roman_to_integer "XL"
