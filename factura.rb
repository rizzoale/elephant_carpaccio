# STATE_TAX could be moved to a different file
STATE_TAX = {
    "CA" => 0.0825
}

# Check for valid inputs
if (ARGV.size != 3)
    puts "Usage: ruby factura.rb <quantity> <unit price> <state>"
    exit
end

quantity = Float(ARGV[0]) rescue nil
unit_price = Float(ARGV[1]) rescue nil
state = ARGV[2]

if ( (quantity == nil) || (unit_price == nil) )
    puts "Both quantity and unit price need to be numeric"
    exit
end

if (STATE_TAX[state] == nil)
    puts "Invalid state. Please provide a valid state from the following options:"
    puts STATE_TAX.keys
    exit
end

# If all inputs are correct, we can calculate
puts "Valid amount of inputs! Good job."