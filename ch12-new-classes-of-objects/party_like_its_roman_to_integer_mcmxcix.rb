def roman_to_integer roman
  less_than = { 'I'=>['V','X'],'X'=>['L','C'],'C'=>['D','M'] }
  translation = { 'I'=>1, 'V'=>5, 'X'=>10, 'L'=>50, 'C'=>100, 'D'=>500, 'M'=>1000 }
  number = 0
  i = 0
  while i < roman.length
  	if not roman[i+1].nil?
  		if (less_than.keys.include?(roman[i].upcase) and less_than[roman[i].upcase].include?(roman[i+1].upcase))
  			number = number + (translation[roman[i+1].upcase] - translation[roman[i].upcase])
  			i += 2
  		elsif translation.keys.include?(roman[i].upcase)
  			number = number + translation[roman[i].upcase]
  			i += 1
  		else
  			return false
  		end
  	elsif translation.keys.include?(roman[i].upcase)
  		number = number + translation[roman[i].upcase]
  		i += 1
  	else
  		return false
	end
  end
  number
end