def shuffle arr
  word_hash = {}
  arr.each do |item|
  	loop do
  		rando = rand(1..arr.length)
  		next if word_hash.values.include? rando
		word_hash[item] = rando
		break
	end
  end
  (1..arr.length).map do |num|
  	word_hash.key(num)
  end
end