
def sort arr
  arr.sort_by(&:downcase)
end

p sort(["Hey", "hey","How", "are", "bugger", "Bottoms"])