class Integer

	def permutation
		result = []
		bag = (0...self).to_a
		for i in 0...self
			draw = rand(self-i)
			result << bag[draw]
			bag.delete(bag[draw])
		end
		return result
	end

	def factorial
		if self <0
			return nil
		end
		if self == 0 
			return 1
		else
			return self*(self-1).factorial
		end
	end

	def small_english_number(with_and = false)
		num = self
		the_number = ''
		if num == 0
			the_number == 'zero'
		end
		ones =['one','two','three','four','five','six','seven','eight','nine']
		teens = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
		tens = ['ten','tweenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
		if num > 99
			current = (num/100).to_i
			the_number = ones[current-1] + ' hundred '
			the_number += 'and ' if with_and == true
			num = num - current*100 
		end
		if num > 0 && num < 10
			the_number = the_number + ones[num-1]
		elsif num > 10 && num < 20
			the_number = the_number + teens[num-11]
		elsif num > 19 && num < 100 
			the_number = the_number + tens[(num/10).to_i - 1] + ' ' + ones[(num%10).to_i - 1]
		end
		return the_number
	end


	def english(with_and = false)
		num = self
		left = num
		current = 0
		the_number = ''
		large_units = [" trillion "," billion "," million "," thousand ",""]
		for i in 0..4
			power_index = 3*(4-i)
			if left.to_s.length > power_index
				current = (left / (10**power_index)).to_i
				left -= current*(10**power_index)
				if with_and == true
					the_number += (current.small_english_number(true) + large_units[i])	
				else
					the_number += (current.small_english_number + large_units[i])	
				end
				the_number += 'and ' if (with_and == true && i != 4)
			end
		end
		return the_number 
	end

	def romnum_1_to_9(one, five, ten, modula)
		num = self
		m = ((num % (modula*10)) / modula ).to_i
		num_of_five = (m/5).to_i
		num_of_one = m%5 		
		if num_of_five == 1 
			if num_of_one == 4
				rom_num = one + ten 
			else
				rom_num = five + one*num_of_one
			end		
		else #num_of_five == 0
			if num_of_one == 4
				rom_num = one + five
			else
				rom_num = one*num_of_one
			end
		end
		return rom_num
	end

	def roman
		num = self
		if num > 89999999
			return "number too big for roman numerals"
		end
		rom_digits = ['I','V','X','L','C','D','M','P','Q','R','S','T','A','B','E','F']
		num_of_digits = (num).to_s.length
		roman_num = ''
		for i in 0...num_of_digits
			roman_num = num.romnum_1_to_9(rom_digits[i*2],rom_digits[i*2+1],rom_digits[i*2+2],10**i) + roman_num
		end		
		return roman_num
	end

	@@romnum_list = {'I' => 1, 'V' => 5,'X' => 10,'L' => 50,'C' => 100,'D' => 500,'M' => 
					1000,'P' => 5000,'Q' => 10000,'R' => 50000,'S' => 100000,'T' => 500000,'A' => 1000000,
					'B' => 5000000,'E' => 10000000,'F' => 50000000}

	def Integer.romnum_list
		@@romnum_list
	end
end

#puts 5.factorial
#puts 7012348.english
#puts 1234123.english
#puts Integer.romnum_list


class Array


	def shuffle(shuffled_array=[])
		array = self
		if array.length != 0 
			selected = rand(array.length)
			shuffled_array.push(array[selected])
			array.delete(array[selected])
			array.shuffle3(shuffled_array)
		else
			return shuffled_array
		end
	end

	def shuffle1
		shuffled_array = []
		permutation = self.length.permutation
		for i in 0...self.length
			shuffled_array << self[permutation[i]]
		end
		return shuffled_array
	end

	def shuffle2
		array_to_shuffle = []
		for i in 0...self.length
			array_to_shuffle << self[i]
		end	
		shuffled_array = []
		for i in 0...self.length
			selected = array_to_shuffle.sample
			shuffled_array << selected
			array_to_shuffle.delete(selected)
		end
		return shuffled_array
	end

end
#any_array = ["hello","World","here","We","go","sort","it"]
#puts "#{any_array.shuffle3}"
#puts any_array.sample

class OrangeTree

	def initialize
		@dead = false
		@height = 0
		@age = 0
		@orange_count = 0
	end

	def height
		@height
	end

	def age
		@age
	end

	def orange_count
		@orange_count
	end

	def die?
		death_roll = 10 + rand(21)
		if death_roll <= @age   #chance of dieing increases with age
			@dead = true
		else
			@dead = false
		end
	end		

	def one_year_passes
		if @dead
			return "The orange tree is aleady long dead. :("
			#exit
		else
			@age += 1
			if self.die?
				return "The orange tree died this year. :(((("
				#exit
			else #tree is alive,lets produces fruits and gets taller!
				@height += 30 + rand(50)
				if @age >= 5
					@orange_count = @age * 20 + rand(@age*10)	
				end
				return "The orange tree is #{@age} years old and #{@height} cm heigh, currently has #{@orange_count} oranges."
			end
		end
	end

	def pick_orange(num)
		@num_to_pick = num
		@num_picked = 0
		if @num_to_pick > @orange_count
			@num_picked = @orange_count
			@orange_count -= @num_picked
		else
			@num_picked = @num_to_pick
			@orange_count -= @num_picked
		end
		return "#{@num_picked} oranges were picked, and there are #{@orange_count} left."
	end
end

=begin
tree1 = OrangeTree.new
puts tree1.age
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.pick_orange(50)
puts tree1.one_year_passes
puts tree1.pick_orange(500)
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
=end

class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly     = 10  # He's full.
    @stuffInIntestine =  0  # He doesn't need to go.

    puts @name + ' is born.'
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end

  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passageOfTime
  end

  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private

  # "private" means that the methods defined here are
  # methods internal to the object.  (You can feed
  # your dragon, but you can't ask him if he's hungry.)

  def hungry?
    # Method names can end with "?".
    # Usually, we only do this if the method
    # returns true or false, like this:
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      # Move food from belly to intestine.
      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else  # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving!  In desperation, he ate YOU!'
      exit  # This quits the program.
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops!  ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end

end

=begin
puts 1234123.english

pet = Dragon.new 'Norbert'
pet.feed
pet.toss
pet.walk
pet.putToBed
pet.rock
pet.putToBed
pet.putToBed
pet.putToBed
pet.putToBed

=end

def dragon_interactive
	puts "Enter the name of your new baby dragon:"
	name = gets.chomp.downcase.capitalize
	pet = Dragon.new(name)
	puts "What would you like to do with #{name}, options are:"
	puts "'feed','toss','walk','putToBed','rock'.'quit'"
	while true
		puts "Please enter what you would like to do with #{name} next?"
		action = gets.chomp.downcase
		case action
		when 'feed'
			pet.feed
			#break
		when 'toss'
			pet.toss
			#break
		when 'walk'
			pet.walk
			#break
		when 'puttobed'
			pet.putToBed
			#break
		when 'rock'
			pet.rock
			#break
		when 'quit'
			puts "Are you sure you want to quit the program? ('y' or 'n')"
		 	quit = gets.chomp.downcase
		 	if quit == 'y'
		 		exit
			end
		else
			puts "Option not recognized, please try again."	
		end
	end
end

#dragon_interactive