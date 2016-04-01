def old_roman_numeral num
	to_return = ""
  	thous = (num / 1000)
	hunds = (num % 1000 / 100)
  	tens  = (num % 100 / 10)
  	ones  = (num % 10)

  	if ones < 5
  	to_return << "I" * ones
  	else
    to_return << "I" * (ones-5)
    to_return << "V"
  	end

  	if tens < 5
  	to_return << "X" * tens
  	else
    to_return << "X" * (tens-5)
    to_return << "L"
  	end

  	if hunds < 5
  	to_return << "C" * hunds
  	else
    to_return << "C" * (hunds-5)
    to_return << "D"
  	end

  	to_return << "M" * thous

  	p to_return.reverse


 end

old_roman_numeral(4)