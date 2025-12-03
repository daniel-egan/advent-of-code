file = File.read("temp.txt")

numberOfHouses = 1

x = 0
y = 0

housesHashMap = {}

splitArray = file.split(//)

for direction in splitArray do
    case direction
    when "^"
        puts "UP"
        y += 1
        housesHashMap[:(x,y)] += 1
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

puts housesHashMap