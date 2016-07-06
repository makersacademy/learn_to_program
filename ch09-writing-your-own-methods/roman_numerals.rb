def roman_numeral num

#Check for valid input
	return "Enter a valid number" if num < 0 
	
#Split input into digits and pad to 4 characters as needed 
	arr=num.to_s.rjust(4,'0').split("").map(&:to_i)

#Initialize output string
	out=''

#Deal with Thousands
	out<<"#{'M'*arr[0]}"

#Deal with Hundreds	
	if arr[1]==9 
		out<<"CM" 
	elsif arr[1]>=5
		out<<"#{'C'*(arr[1]%5)}D" 
	else
		out<<"#{'C'*(arr[1])}" 
	end
	
#Deal with Tens
	if arr[2]==9 
		out<<"XC" 
	elsif arr[2]>=5
		out<<"#{'X'*(arr[2]%5)}L" 
	else
		out<<"#{'X'*(arr[2])}" 
	end

#Deal with Ones
	if arr[3]==9 
		out<<"IX" 
	elsif arr[3]>=5
		out<<"#{'I'*(arr[3]%5)}V" 
	else
		out<<"#{'I'*(arr[3])}" 
	end

#Return Output 
return out

end
