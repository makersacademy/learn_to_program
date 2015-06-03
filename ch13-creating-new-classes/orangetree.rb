class OrangeTree

def initialize tree
    @change_height = 0
    @age = 0
    @oranges = 0
    @alive = true
end


def height
    puts "The tree is #{@change_height} cm tall"
end

def one_year_passes
    @oranges = 0
    @change_height += 20
    @age += 1
    
    puts "The tree is #{@age} years old"
    
    height
    
    if @age >= 6
        puts "The tree is dead"
        @alive = false
        
        elsif
        @age >=3
        @oranges += 10
        else
        
    end
    
    count_the_oranges
    
end

def count_the_oranges
    puts "You have #{@oranges} oranges."
    
end

def pick_an_orange
    if @alive == false
        puts 'The tree is dead. There are no oranges to pick'
        
        elsif
        @oranges == 0
        puts 'There are no oranges to pick'
        
        else
        puts 'The oranges are delicious!'
        @oranges = @oranges -1
        
        count_the_oranges
        
    end
    
end

end

otree = OrangeTree.new 'tree'

otree.one_year_passes
otree.one_year_passes
otree.one_year_passes
otree.pick_an_orange
otree.pick_an_orange
otree.pick_an_orange
otree.pick_an_orange
otree.pick_an_orange
otree.one_year_passes
otree.one_year_passes
otree.one_year_passes
otree.one_year_passes
otree.pick_an_orange
