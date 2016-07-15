# 9.1: Method Parameters
=begin
puts "9.1: Method Parameters\n"

def say_moo(number_of_moos=1)
    puts "mooooo...." * number_of_moos
end

say_moo(3)

def double_this(num)
    num_times_2 = num * 2
    puts num.to_s+' doubled is '+num_times_2.to_s
end

double_this(44)

# 9.4: Return Values

puts "\n9.4: Return Values\n"

def say_moo(number_of_moos)
    puts 'mooooo...' * number_of_moos
    'yellow submarine'
end
x = say_moo(3)
puts x.capitalize + ', dude...'
puts x + '.'

def favourite_food(name)
    if name == 'Lister'
        return 'vindaloo'
    end
    if name == 'Rimmer'
        return 'mashed potatoes'
    end
    
    'hard to say...maybe fried plantain?'
end

def favourite_drink(name)
    if name =='Jean-Luc'
        'tea, Earl Grey, hot'
    elsif name == 'Kathryn'
        'coffee, black'
    else
        'perhaps...horchata?'
    end
end

puts favourite_food('Rimmer')
puts favourite_food('Lister')
puts favourite_food('Cher')
puts favourite_drink('Kathryn')
puts favourite_drink('Oprah')
puts favourite_drink('Jean-Luc')

=end

=begin
# Psychology Experiment: Refactored
puts "\nPsychology Experiment: Refactored\n"

def ask(question)
    while true
        puts question
        reply = gets.chomp.downcase
        
        if (reply == 'yes' || reply == 'no')
            if reply == 'yes'
                answer = true
            else
                answer = false
            end
            break
        else
            puts "Please answer 'yes' or 'no'."
        end
    end
    
    answer # This is what we reutrn (true or false).
end

puts "Hello, and thank you for..."
puts
ask("Do you like eating tacos?")        # Ignore this return value
ask("Do you like eating burritos?")     # And this one

wets_bed = ask("Do you wet the bed?")  # Save this return value

ask("Do you like eating chimichangas?")
ask("Do you like eating sopapillas?")

puts "Just a few more questions"

ask("Do you like drinking horchata?")
ask("Do you like eating flautas?")
puts

puts "DEBRIEFING:"
puts "Thank you for..."
puts
puts wets_bed
=end

=begin
# 9.5.1: Psychology Experiment Refactored: Improved ask method
puts "\nPsychology Experiment Refactored: Improved ask method\n"

def ask(question)
    while true
        puts question
        reply = gets.chomp.downcase
        
        if (reply == 'yes' || reply == 'no')
            if reply == 'yes'
                return true
            else
                return false
            end
            break
        else
            puts "Please answer 'yes' or 'no'."
        end
    end
end

puts "Hello, and thank you for..."
puts
ask("Do you like eating tacos?")        # Ignore this return value
ask("Do you like eating burritos?")     # And this one

wets_bed = ask("Do you wet the bed?")  # Save this return value

ask("Do you like eating chimichangas?")
ask("Do you like eating sopapillas?")

puts "Just a few more questions"

ask("Do you like drinking horchata?")
ask("Do you like eating flautas?")
puts

puts "DEBRIEFING:"
puts "Thank you for..."
puts
puts wets_bed

=end