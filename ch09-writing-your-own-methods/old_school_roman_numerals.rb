def old_roman_numeral num
  	num_of_m = (num/1000).to_i
	num_of_d = ((num%1000)/500).to_i
	num_of_c = ((num%500)/100).to_i
	num_of_l = ((num%100)/50).to_i
	num_of_x = ((num%50)/10).to_i
	num_of_v = ((num%10)/5).to_i
	num_of_i = (num%5).to_i

	"#{'M'*num_of_m}#{'D'*num_of_d}#{'C'*num_of_c}#{'L'*num_of_l}#{'X'*
	num_of_x}#{'V'*num_of_v}#{'I'*num_of_i}"
end