# Check for valid inputs
if (ARGV.size != 3)
    puts "Usage: ruby factura.rb <cantidad> <precio unitario> <estado>"
    exit
end

# If all inputs are correct, we can calculate
puts "Valid amount of inputs! Good job."