file = File.read("temp.txt")

currentX = 0
currentY = 0

housesHashMap = Hash.new(0)
housesHashMap[[0,0]] += 1

splitArray = file.split(//)

for direction in splitArray do
    case direction
    when "^"
        currentY += 1
        housesHashMap[[currentX, currentY]] += 1
    when "<"
        currentX -= 1
        housesHashMap[[currentX, currentY]] += 1
    when "v"
        currentY -= 1
        housesHashMap[[currentX, currentY]] += 1
    when ">"
        currentX += 1
        housesHashMap[[currentX, currentY]] += 1
    end
end

puts housesHashMap.length