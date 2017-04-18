def dictionary_sort arr
  sorted = Array.new
  upcase = arr.select {|x| x == x.upcase}.sort
  downcase = arr.select {|x| x == x.downcase}.sort
  hup = [*upcase.map { |d| [d.downcase, d]}].to_a
  hdn = [*downcase.map { |d| [d.downcase, d]}].to_a
  combined = hup += hdn
  combined.map {|x, y| y}
end