class BirthdayHelper

  def get_birth_date 
    puts "This is a birthday helper."
    puts "Give me a name, baby."
    parser person_name = gets.chomp
  end

  def parser person_name, file_name = "./BirthDates.rb"
    File.open file_name do |file|
      file.each do |line| 
        name, month_day, year = line.split "," 
        return [month_day, year].join if name == person_name
      end
    end
  end

end