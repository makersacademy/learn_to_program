load '/Users/NOMNOMg0/projects/learn_to_program/ch13-creating-new-classes/original_baby_dargon.rb'


def run_dragon (name='Potato')
  x = Dragon.new name
  alive = true
  while alive
    puts 'input command'
    input = gets.chomp
    key =['feed', 'walk','put_to_bed', 'toss', 'rock']
    if key.include?(input)
      x.send(input)
    elsif input == 'exit'
      exit
    elsif input == 'help'
      puts "possible commands:'feed', 'walk','put_to_bed', 'toss', 'rock'"
      puts 'type "exit" to end'
    else
      puts 'not recognised'
      puts 'type help for help'
    end
  end


end

run_dragon




