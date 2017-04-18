# your code here
def shuffle arr
  # your code here
	output =[]

	while arr.length > 0
		rand_index = rand(arr.length)
		curr_index = 0
		new_arr = []
		arr.each do |i|
			if curr_index == rand_index
				output.push i
			else
				new_arr.push i
			end

			curr_index += 1
		end
	arr = new_arr	
	end
	output
end

source = Dir["./source/*.mp3"]
Dir.chdir["./test"]

puts "what shall we call this playlist?"
name = gets.chomp << ".m3u"

File.open name, 'w' do 
	shuffle(source).join("\n")
end
