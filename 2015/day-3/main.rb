file = File.read("temp.txt")

numberOfHouses = 1

x = 0
y = 0

empty_table = Array.new

splitArray = file.split(//)

for direction in splitArray do
    case direction
    when "^"
        puts "UP"
        y += 1
        xAxisArray = empty_table.at(x)
        if xAxisArray == nil
            puts "Cannot find an entry at this x axis"
            empty_table.insert(x)
        else
            puts "Found at x value"
        end
    when "<"
        puts "LEFT"
        x -= 1
    when "v"
        puts "DOWN"
        y -= 1
    when ">"
        puts "RIGHT"
        x += 1
    end
end