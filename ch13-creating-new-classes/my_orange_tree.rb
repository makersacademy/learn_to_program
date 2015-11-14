#MY ORANGE TREE PROGRAM
#Please try running this code in IRB, I spent a little while on it & its pretty fun :D
#I just felt a little more creative than the rspec was allowing so I decided to just go with it, and see where it took me

class OrangeTree
    def initialize
      @height = 0
      @oranges = 0
      @years = 0
      @alive = true
    end

    def height
        if @alive
            "Your tree is #{@height.round(1)}ft. tall!"
        else
            puts "Your tree is dead."
        end
    end

    def age
        "Your tree is #{@years} years old!"
    end

    def count_the_oranges
        if @alive
            puts "Your tree has #{@oranges} oranges on it!"
        else
            puts "Your tree is dead."
        end
    end

    def pick_an_orange
        if @oranges == 0
            puts "There are no more oranges to pick this year"
        else
        @oranges -= 1
            if @years < 10
                puts "Ew! It's so sour!"
            elsif @years > 10 && @years < 15
                puts "Not bad, not too long before this tree is perfect!"
            elsif @years >= 15 && @years < 25
                puts "Mmmm absolutely delicious!!"
            else
                puts "This is a little tart for my taste"
            end
        end
    end


def one_year_passes
    if @alive
        unless @height > 23
            @height += 1.2
            puts
            puts "Your tree grew this year!"
        end
            @years += 1

        @oranges = 0

        if @height > 7
            @oranges += (@years * 3)
        elsif @height > 10
            @oranges += (@years * 5)
        elsif @height > 15
            @oranges += (@years * 7)
        elsif @height > 20
            @oranges += (@years * 10)
        end
        puts
        puts "Another year has passed in the orchard"
        puts
    else
        puts "Oh no! The orange tree has withered and died from age!"
        exit

    end
end


    def alive?
        if @years == 30
            @alive = false
        else
            @alive = true
        end
    end

end

tree = OrangeTree.new

puts "You have planted the Orange Tree you've always wanted! Now it's time to watch it grow!"
puts "If you want to know how 'old' it is, how 'tall' it is or how 'many' oranges there are, just ask!!!"
puts "Or even if you're a bit hungry, and fancy trying one of the 'orange's on the tree, go right ahead!!"
puts
while tree.alive?
    puts "Observe your tree :)"
    puts
    observe = gets.chomp
    while observe != ' '
    if observe.include? "tall"
        puts
        puts tree.height
        puts
    elsif observe.include? "orange"
        puts
        puts "Would you like an orange?"
        puts
        hungry = gets.chomp
        if hungry.downcase == 'yes'
            puts
            tree.pick_an_orange
            puts
        else
            puts
            puts "Your loss."
            puts
        end
    elsif (observe.include? "count" or observe.include? "many")
        puts
        puts tree.count_the_oranges
        puts
    elsif (observe.include? "old" or observe.include? "age")
        puts
        puts tree.age
        puts
    end
    observe = gets.chomp
    end
    tree.one_year_passes
end

tree.one_year_passes
