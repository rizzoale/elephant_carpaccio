# STATE_TAX could be moved to a different file
STATE_TAX = {
    "CA" => 0.0825
}

# Check for valid inputs
if (ARGV.size != 3)
    puts "Usage: ruby factura.rb <cantidad> <precio unitario> <estado>"
    exit
end

state = ARGV[2]

if (STATE_TAX[state] == nil)
    puts "Invalid state"
    exit
end

# If all inputs are correct, we can calculate
puts "Valid amount of inputs! Good job."