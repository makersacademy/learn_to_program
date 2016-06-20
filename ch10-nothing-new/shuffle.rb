def shuffle arr
arr.sort_by{rand}
#originally put {|a, b| rand <=> rand } .. this is not needed.
#rand = random 
end
