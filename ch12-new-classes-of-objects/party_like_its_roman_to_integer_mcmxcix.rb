def roman_to_integer roman
	roman = roman.upcase
	if /CM/.match(roman) then roman.gsub!('CM', ' 900') end
	if /CD/.match(roman) then roman.gsub!('CD', ' 400') end
	if /XC/.match(roman) then roman.gsub!('XC', ' 90') end
	if /XL/.match(roman) then roman.gsub!('XL', ' 40') end
	if /IX/.match(roman) then roman.gsub!('IX', ' 9') end
	if /IV/.match(roman) then roman.gsub!('IV', ' 4') end
	if /M/.match(roman) then roman.gsub!('M', ' 1000') end
	if /D/.match(roman) then roman.gsub!('D', ' 500') end
	if /C/.match(roman) then roman.gsub!('C', ' 100') end
	if /L/.match(roman) then roman.gsub!('L', ' 50') end
	if /X/.match(roman) then roman.gsub!('X', ' 10') end
	if /V/.match(roman) then roman.gsub!('V', ' 5') end
	if /I/.match(roman) then roman.gsub!('I', ' 1') end
	
	return roman.split(' ').map(&:to_i).inject(0){|sum,x| sum + x }
end

