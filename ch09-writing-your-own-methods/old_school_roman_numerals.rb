def old_roman_numeral num
arr = num.to_s.split("").map {|x| x.to_i}
finalarr = Array.new

case
when arr.count == 1
  if arr[-1] < 5
    dig1 = "#{"I" * arr[-1]}"
  elsif arr[-1] == 5
    dig1 = "V"
  else
    dig1 = "#{"V"}#{"I"* (arr[-1] - 5)}"
  end 
  
when arr.count == 2
  if arr[-2] < 5
    dig2 = "#{"X" * arr[-2]}"
  elsif arr[-2] == 5
    dig2 = "L"
  else
    dig2 = "#{"L"}#{"X" * (arr[-2] - 5)}"
  end 
  
    if arr[-1] < 5
    dig1 = "#{"I" * arr[-1]}"
  elsif arr[-1] == 5
    dig1 = "V"
  else
    dig1 = "#{"V"}#{"I"* (arr[-1] - 5)}"
  end 
  
when arr.count == 3
  if arr[-3] < 5
    dig3 = "#{"C" * arr[-3]}"
  elsif arr[-3] == 5
    dig3 = "D"
  else
    dig3 = "#{"D"}#{"C" * (arr[-3] - 5)}"
  end 
  
    if arr[-2] < 5
    dig2 = "#{"X" * arr[-2]}"
  elsif arr[-2] == 5
    dig2 = "L"
  else
    dig2 = "#{"L"}#{"X" * (arr[-2] - 5)}"
  end 
  
    if arr[-1] < 5
    dig1 = "#{"I" * arr[-1]}"
  elsif arr[-1] == 5
    dig1 = "V"
  else
    dig1 = "#{"V"}#{"I"* (arr[-1] - 5)}"
  end 
  
when arr.count == 4
  dig4 = "#{"M" * arr[-4]}"
  
    if arr[-3] < 5
    dig3 = "#{"C" * arr[-3]}"
  elsif arr[-3] == 5
    dig3 = "D"
  else
    dig3 = "#{"D"}#{"C" * (arr[-3] - 5)}"
  end 
  
    if arr[-2] < 5
    dig2 = "#{"X" * arr[-2]}"
  elsif arr[-2] == 5
    dig2 = "L"
  else
    dig2 = "#{"L"}#{"X" * (arr[-2] - 5)}"
  end 
  
    if arr[-1] < 5
    dig1 = "#{"I" * arr[-1]}"
  elsif arr[-1] == 5
    dig1 = "V"
  else
    dig1 = "#{"V"}#{"I"* (arr[-1] - 5)}"
  end 
  
end

finalarr << dig4
finalarr << dig3
finalarr << dig2
finalarr << dig1

finalarr.compact.join

end