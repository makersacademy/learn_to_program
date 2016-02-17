def old_roman_numeral num
  roman = {"M" => 0, "D" => 0, "C" => 0, "L" => 0, "X" => 0, "V" => 0, "I" => 0}
  roman["M"] = num / 1000
  num = num%1000
  roman["D"] = num / 500
  num = num%500
  roman["C"] = num / 100
  num = num%100
  roman["L"] = num / 50
  num = num%50
  roman["X"] = num / 10
  num = num%10
  roman["V"] = num / 5
  roman["I"] = num % 5
  return "M"*roman["M"]+"D"*roman["D"]+"C"*roman["C"]+"L"*roman["L"]+"X"*roman["X"]+"V"*roman["V"]+"I"*roman["I"]
end
