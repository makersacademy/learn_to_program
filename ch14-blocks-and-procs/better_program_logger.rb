$logger_depth = 0

def log string_description, &block

  prefix = '  '*$logger_depth
  puts prefix + "#{string_description} started"

  $logger_depth += 1

  x = block.call

  $logger_depth -= 1

  puts prefix + "#{string_description} finished and returned #{x}"
end

  log 'addition' do
    log 'Hello' do
      log 'multiplication' do
        5 * 4
      end

      "Hello"
    end

    log 'division' do
      10 / 2
    end

    1 + 2
  end
