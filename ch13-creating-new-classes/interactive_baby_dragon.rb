require_relative '/Users/newuser/Desktop/Makers/precourse/week2/' +
                'learn_to_program/ch13-creating-new-classes/dragon.rb'
class Dragon
  def input_command command
    if command.downcase == 'walk'
      self.walk
    elsif command.downcase == 'feed'
      self.feed
    elsif command.downcase == 'put to bed'
      self.put_to_bed
    elsif command.downcase == 'toss'
      self.toss
    elsif command.downcase == 'rock'
      self.rock
    else
      puts "Sorry unknown command entered... #{@name} looks confused.."
    end
  end
end

sparky = Dragon.new('Sparky')
puts "Enter a command to control your dragon"
command = gets.chomp
sparky.input_command(command)
