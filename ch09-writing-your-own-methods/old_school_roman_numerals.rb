def old_roman_numeral num

splitArray = num.split(",").map { |s| s.to_i }
romanArray = Array.new

if splitArray.length == 4
  romanArray.push ('M' * (splitArray[0]/1000)) 
  splitArray.delete_at(0)

elsif splitArray.length == 3 && splitArray[0] >=5
  romanArray.push ('D')

elsif splitArray.length == 3 && splitArray[0] < 5
  romanArray.push ('C' * (splitArray[0]/100))
  splitArray.delete_at(0)

elsif splitArray.length == 2 && splitArray[0] >=5
  romanArray.push ('L')

elsif splitArray.length == 2 && splitArray[0] < 5
  romanArray.push ('X' * (splitArray[0]/10))
  splitArray.delete_at(0)

elsif splitArray.length == 1 && splitArray[0] >=5
  romanArray.push ('V')

elsif splitArray.length == 1 && splitArray[0] < 5
  romanArray.push ('I' * (splitArray[0]/10))
  splitArray.delete_at(0)
end

return romanArray.join("")

end
