def roman_to_integer roman

# Put all the characters in an array and count how many array items there are. 
  number_of_characters = 0
  roman_array = roman.split(//)
  roman_array.each_index do |index| 
  number_of_characters = number_of_characters + 1
  end

 # Testing / temporary code
  puts Time.new
  puts 'MCMXCIX'
  puts (number_of_characters.to_s + ' total.')
  puts roman_array.inspect
  puts roman_array[0]
  puts roman_array[0..2].join
 
  character = 0
  roman_to_integer = 0
  roman_chunk = []
  chunks_array = []

  while character < number_of_characters
    roman_array.each_index do |index|
     
      if roman_array[0] == 'M'
       
        if roman_array[0..2].join == 'MMM'
          roman_chunk = 'MMM'
          3.times { |time| roman_array.shift }
          chunks_array << roman_chunk 
        elsif roman_array[0..1].join == 'MM'
          roman_chunk = 'MM'
          2.times { |time| roman_array.shift }
          chunks_array << roman_chunk
        elsif roman_array[0] == 'M'
          roman_chunk = 'M'
          delete = roman_array.shift
          chunks_array << roman_chunk
        else
          puts "That is not Roman Numerals"
        end
        # Testing / temporary code
        puts 'ROMAN_CHUNK: ' + roman_chunk.inspect 
        puts 'ROMAN_ARRAY: ' + roman_array.inspect
        puts 'CHUNKS_ARRAY: ' + chunks_array.inspect
        puts '--- M ---'

                         
        
      elsif roman_array[0] == 'D'
 	     
 	      if roman_array[0..2].join == 'DCCC'
          roman_chunk = 'DCCC'
          4.times { |time| roman_array.shift }
          chunks_array << roman_chunk 
        elsif roman_array[0..2].join == 'DCC'
          roman_chunk = 'DCC'
          3.times { |time| roman_array.shift }
          chunks_array << roman_chunk 
        elsif roman_array[0..1].join == 'DC'
          roman_chunk = 'DC'
          2.times { |time| roman_array.shift }
          chunks_array << roman_chunk
        elsif roman_array[0..1].join == 'DM'
          roman_chunk = 'DM'
          2.times { |time| roman_array.shift }
          chunks_array << roman_chunk
        elsif roman_array[0] == 'D'
          roman_chunk = 'D'
          delete = roman_array.shift
          chunks_array << roman_chunk
        else
          puts "That is not Roman Numerals"
        end
        # Testing / temporary code
        puts 'ROMAN_CHUNK: ' + roman_chunk.inspect 
        puts 'ROMAN_ARRAY: ' + roman_array.inspect
        puts 'CHUNKS_ARRAY: ' + chunks_array.inspect
        puts '--- D ---'     
          
      elsif roman_array[0] == 'C'
        
        if roman_array[0..3].join == 'CXXX'
          roman_chunk = 'CXXX'
          4.times { |time| roman_array.shift }
          chunks_array << roman_chunk   
        elsif roman_array[0..2].join == 'CCC'
          roman_chunk = 'CCC'
          3.times { |time| roman_array.shift }
          chunks_array << roman_chunk 
        elsif roman_array[0..2].join == 'CXX'
          roman_chunk = 'CXX'
          3.times { |time| roman_array.shift }
          chunks_array << roman_chunk 
        elsif roman_array[0..1].join == 'CC'
          roman_chunk = 'CC'
          2.times { |time| roman_array.shift }
          chunks_array << roman_chunk
        elsif roman_array[0..1].join == 'CX'
          roman_chunk = 'CX'
          2.times { |time| roman_array.shift }
          chunks_array << roman_chunk
        elsif roman_array[0..1].join == 'CM'
          roman_chunk = 'CM'
          2.times { |time| roman_array.shift }
          chunks_array << roman_chunk
        elsif roman_array[0..1].join == 'CD'
          roman_chunk = 'CD'
          2.times { |time| roman_array.shift }
          chunks_array << roman_chunk
        elsif roman_array[0] == 'C'
          roman_chunk = 'C'
      	  delete = roman_array.shift
          chunks_array << roman_chunk
        else
          puts "That is not Roman Numerals"
        end
        # Testing / temporary code
        puts 'ROMAN_CHUNK: ' + roman_chunk.inspect 
        puts 'ROMAN_ARRAY: ' + roman_array.inspect
        puts 'CHUNKS_ARRAY: ' + chunks_array.inspect
        puts '--- C ---'
         
 	    elsif roman_array[0] == 'L'

        if roman_array[0..2].join == 'LXXX'
          roman_chunk = 'LXXX'
          4.times { |time| roman_array.shift }
          chunks_array << roman_chunk 
        elsif roman_array[0..2].join == 'LXX'
          roman_chunk = 'LXX'
          3.times { |time| roman_array.shift }
          chunks_array << roman_chunk 
        elsif roman_array[0..1].join == 'LX'
          roman_chunk = 'LX'
          2.times { |time| roman_array.shift }
          chunks_array << roman_chunk
        elsif roman_array[0..1].join == 'LC'
          roman_chunk = 'LC'
          2.times { |time| roman_array.shift }
          chunks_array << roman_chunk
        elsif roman_array[0] == 'L'
          roman_chunk = 'L'
          delete = roman_array.shift
          chunks_array << roman_chunk
        else
          puts "That is not Roman Numerals"
        end
        # Testing / temporary code
        puts 'ROMAN_CHUNK: ' + roman_chunk.inspect 
        puts 'ROMAN_ARRAY: ' + roman_array.inspect
        puts 'CHUNKS_ARRAY: ' + chunks_array.inspect
        puts '--- L ---'    
          
      elsif roman_array[0] == 'X'
       
        if roman_array[0..3].join == 'XIII'
          roman_chunk = 'XIII'
          4.times { |time| roman_array.shift }
          chunks_array << roman_chunk 
        elsif roman_array[0..2].join == 'XII'
          roman_chunk = 'XII'
          3.times { |time| roman_array.shift }
          chunks_array << roman_chunk 
        elsif roman_array[0..1].join == 'XI'
          roman_chunk = 'XI'
          2.times { |time| roman_array.shift }
          chunks_array << roman_chunk
        elsif roman_array[0..1].join == 'XL'
          roman_chunk = 'XL'
       	  2.times { |time| roman_array.shift }
          chunks_array << roman_chunk
        elsif roman_array[0..1].join == 'XC'
          roman_chunk = 'XC'
          2.times { |time| roman_array.shift }
          chunks_array << roman_chunk  
        elsif roman_array[0] == 'X'
          roman_chunk = 'X'
       	  delete = roman_array.shift
          chunks_array << roman_chunk
        else
          puts "That is not Roman Numerals"
        end
        # Testing / temporary code
        puts 'ROMAN_CHUNK: ' + roman_chunk.inspect 
        puts 'ROMAN_ARRAY: ' + roman_array.inspect
        puts 'CHUNKS_ARRAY: ' + chunks_array.inspect
        puts '--- X ---'   
           

      elsif roman_array[0] == 'V'
          
 	      if roman_array[0..3].join == 'VIII'
          roman_chunk = 'VIII'
          4.times { |time| roman_array.shift }
          chunks_array << roman_chunk 
 	      if roman_array[0..2].join == 'VII'
          roman_chunk = 'VII'
          3.times { |time| roman_array.shift }
          chunks_array << roman_chunk 
        elsif roman_array[0..1].join == 'VI'
          roman_chunk = 'VI'
          2.times { |time| roman_array.shift }
          chunks_array << roman_chunk
        elsif roman_array[0] == 'V'
          roman_chunk = 'V'
          delete = roman_array.shift
          chunks_array << roman_chunk
        else
          puts "That is not Roman Numerals"
        end
        # Testing / temporary code
        puts 'ROMAN_CHUNK: ' + roman_chunk.inspect 
        puts 'ROMAN_ARRAY: ' + roman_array.inspect
        puts 'CHUNKS_ARRAY: ' + chunks_array.inspect
        puts '--- V ---'

      # Testing / temporary code. Not sure why this is here!
      end

      else roman_array[0] == 'I'
     
        if roman_array[0..2].join == 'III'
          roman_chunk = 'III'
          3.times { |time| roman_array.shift }
          chunks_array << roman_chunk 
        elsif roman_array[0..1].join == 'IX'
          roman_chunk = 'IX'
          2.times { |time| roman_array.shift }
          chunks_array << roman_chunk
        elsif roman_array[0..1].join == 'IV'
          roman_chunk = 'IV'
          2.times { |time| roman_array.shift }
          chunks_array << roman_chunk  
        elsif roman_array[0..1].join == 'II'
          roman_chunk = 'II'
          2.times { |time| roman_array.shift }
          chunks_array << roman_chunk
        elsif roman_array[0] == 'I'
          roman_chunk = 'I'
          delete = roman_array.shift
          chunks_array << roman_chunk
        else
          puts "That is not Roman Numerals"
        end
        # Testing / temporary code
        puts 'ROMAN_CHUNK: ' + roman_chunk.inspect 
        puts 'ROMAN_ARRAY: ' + roman_array.inspect
        puts 'CHUNKS_ARRAY: ' + chunks_array.inspect
        puts '--- I ---'
      
       
 	  end  
  end
 
      character = character + 1 
              
                         
# Testing / temporary code
# return SOMETHING! <<<<
end  

# Calculate the date

roman_values = { M:1000, D:500, C:100, L:50, X:10, I:1 }
date = 0

puts (roman_values[:M])

chunks_array.each do |chunk|
if chunk.to_s.length == 1
  roman_values.keys.each do |key|
    # Testing / temporary code
    puts 'CHUNK: ' + chunk
    puts 'KEY: ' + key.to_s

    # a bit of Testing / temporary code if false.
    chunk.to_s == key.to_s ? (date = date + (roman_values[(key.to_sym)])) : (puts 'so does this')
    # Testing / temporary code
    puts 'CHUNKS LOADED: ' + date.to_s + ' <<<<<<<<<'
  end

# Still working on this block.
  else 
    chunk_size = chunk.length
    compare_chunks_arr = []
    counter = 0
    chunk.each_char do |char| 
      chunk_size.times 
      puts char.class
      compare_chunks_arr << char
      puts compare_chunks_arr.inspect
      puts
      counter = (counter + 1)
    end
  end

end

puts
puts date 
puts

end

roman_to_integer('MCMXCIX')


=begin

Notes.

I : take a following V or X or up to 3 follow III

V : take a preceeding I, or up to 3 following III

X (10) : take up to 3 following III or up to 1 following L or up to 1 following C [or one preceeding I ]

L (50)  : take a preceeding X or up to 3 following X or up to 1 following C
C (100) : take up to 3 CCC or up to 3 following X or up to 1 following M or max 1 following D [take a preceeding X]
D (500) : or up to 3 following C or up to 1 following M [take a preceeding C]
M (1000) : take up to 3 M [or a preceeding C]

NOTHING PROCEEDING EVER HAPPENS

1999
MCMXCIX
1  9  9  9
M CM XC IX

1523
1 5 2  3
M D XX III

1497
1  4  9   7
M CD XC VII

3   6  5
CCC LX V

=end

