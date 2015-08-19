class OrangeTree

def initialize name
    @name = name
    @age = 0
    @height = 1
    @apples = 10
   


   puts "A new apple tree called " + @name + " is born"
   puts @name + "\'s height is " + @height.to_s
 end

 def grow
 	winter
 fruit	
 oneYearPasses
 end

def hungry
	pick
end

def height
	puts "frank's height is #{@height}"
end

def count_the_oranges
	puts "there are #{@apples} oranges"
end

def pick_an_orange
 		pick
 end

end
#private

def oneYearPasses
 		if @age  == 10
 		puts @name + " is dead"
 		exit
 		else
		@age = @age + 1
 		@height = @height + 1
 		puts @name + "\'s height is " + @height.to_s + " and his age is "  + @age.to_s + " and has " + @apples.to_s + " apples"
end

def pick_an_orange
 		pick
 		
 	end
 end


 	
def fruit
	if @age<= 2  
	@apples = 10
	elsif
		@age >= 2 && @age <= 5
		@apples = 30
  elsif @age >= 6 && @age <= 10
		@apples = 5
  	
	end
	puts @apples
end
def height
  puts @height
	end

def pick
    puts "pick how many oranges?"

    @picked = gets.chomp.to_i
    unless @apples < @picked
    	puts "here are you apples"
    	 puts "you picked #{@picked} oranges and there are #{@apples} left"
    @apples = @apples - @picked
    else
    	puts "oops - you want #{@picked} oranges and there are only #{@apples} left on the tree"
    	
    end
   
end



def winter
	@apples = 0
end


tree = OrangeTree.new 'frank'

tree.grow
tree.grow
tree.grow
tree.grow
tree.grow
tree.grow
tree.grow

tree.height
tree.count_the_oranges
tree.pick_an_orange


