# STATE_TAX could be moved to a different file
STATE_TAX = {
    "CA" => 0.0825
}

# DISCOUNT_TABLE could be moved to a different file
DISCOUNT_TABLE = [
    [1000, 0.03],
    [5000, 0.05]
]

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
puts ""
puts "#############################"
puts "# Quantity: #{quantity}"
puts "# Unit Price: #{unit_price}"
puts "# -----------------------------"
puts "# Subtotal: #{quantity*unit_price}"
puts "# "
puts "# Discount: - "
puts "# Tax (after discount): - "
puts "# -----------------------------"
puts "# Total: - "
puts "#############################"
puts ""