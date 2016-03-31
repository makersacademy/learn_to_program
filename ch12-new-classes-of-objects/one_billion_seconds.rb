def one_billion_seconds *birth_inputs
  Time.new - Time.new(*birth_inputs)
end
