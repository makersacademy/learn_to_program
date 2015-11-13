eng_birth = Time.local(1984, 01, 16, 22, 10) # I was born at 23:10 in Italy, so it was 22:10 in the UK.
ita_birth = eng_birth + 3600

eng_one_billion = eng_birth + 1_000_000_000
ita_one_billion = ita_birth + 1_000_000_000

puts "I was born at #{ita_birth} in Italy. In the UK it was #{eng_birth}.\nThe billionth second of my life was exactly #{ita_one_billion} in Italy and #{eng_one_billion} in the UK."

