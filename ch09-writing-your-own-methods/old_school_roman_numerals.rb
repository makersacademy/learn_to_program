def old_roman_numeral num

splitArray = num.split(",").map { |s| s.to_i }
romanArray = Array.new

when splitArray.length == 4
  romanArray.push ('M' * (splitArray(1)/1000))
  splitArray.delete_at(0)
end

when splitArray.length == 3 && splitArray(0) >=5
  romanArray.push ('D')
end

when splitArray.length == 3 && splitArray(0) < 5
  romanArray.push ('C' * (splitArray(1)/100))
  splitArray.delete_at(0)
end

when splitArray.length == 2 && splitArray(0) >=5
  romanArray.push ('L')
end

when splitArray.length == 2 && splitArray(0) < 5
  romanArray.push ('X' * (splitArray(1)/10))
  splitArray.delete_at(0)
end

when splitArray.length == 1 && splitArray(0) >=5
  romanArray.push ('V')
end

when splitArray.length == 1 && splitArray(0) < 5
  romanArray.push ('I' * (splitArray(1)/10))
  splitArray.delete_at(0)
end

return romanArray.join("")

end
