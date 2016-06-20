# your code here
puts "Here's your new Pokemon, which pokemon did you get?"
name = gets.chomp
#Dragon/pokemon class required
pokemon = Pokemon.new (name)
while true
action_command = 'A wild Caterpie appeared!! What will you do? : Attack, Run, Item'
puts action_command
action = gets.chomp
if action == 'Attack'
    return "Choose a move: Tackle, Tail Whip, Growl or HYPER BEAM..."+ move = gets.chomp
    if move == "Tackle"
        return "Good Job #{name}!"
        elsif move == "Tail Whip"
        return "The opponents defense fell!"
        elsif move == "Growl"
        return "The opponents attack fell!"
        elsif move == "HYPER BEAM"
        return "It wasn't vey effective......."
    else 
        return "YOU DON'T HAVE ENOUGH BADGES!!!!! OH NO #{name} has fallen asleep due to your lack of metallic pins on your chest!"
    end
    elsif action == 'Run'
    exit
    elsif action == 'Item'
    return "Choose an Item: Nuclear Bomb, Light saber, Potion..." + item = gets.chomp
    if item = ("Nuclear Bomb" or "light saber")
        return "Trainer used....... wait....... OH GOD NO NO STOP STOP STOP!!!!!"
        elsif item == "Potion"
        return " #{name} got healed by 20HP!"
    else 
    return "Please enter your Item name properly: Choose an Item: Nuclear Bomb, Light saber, Potion"
end
else
    "You chickened out of the fight"
end
end       

#------- issues occuring plus requires a loop function in order to repreat evrthing aside from exit