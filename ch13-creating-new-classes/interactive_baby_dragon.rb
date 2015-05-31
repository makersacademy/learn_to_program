class Dragon

  def self.reproduce
    puts "How will be baby dragon called?"
    name = gets.chomp
    Dragon.new name
  end

  def action action_name
    object = Object.new
    if respond_to? action_name and not object.respond_to? action_name
      send :action_name
    else
      puts "#{@name} can not do this!"
    end

  end