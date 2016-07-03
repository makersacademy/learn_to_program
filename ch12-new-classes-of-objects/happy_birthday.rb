puts "Welcome the The Birthday Spanker!"
puts
questions = ["What YEAR were you born?",
             "What MONTH were you born?",
             "What DAY were you born?"]
answers = ['', '', '']

questions.each.with_index do |q, index|
  while (answers[index] == 0 or not answers[index].is_a? Integer)
    puts q
    answers[index] = gets.chomp.to_i
  end
end 

born = Time.new(answers[0], answers[1], answers[2])   # Year, month, day

age = ((Time.new - born) / (60 * 60 * 24 * 365 + 60 * 60 * 6)).to_i    # 365.25 days a year.

age.times {puts "SPANK!"}

puts "You are #{age} years old!"