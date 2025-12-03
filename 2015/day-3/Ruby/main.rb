file = File.read("day3.txt")

class Santa
  attr_accessor :currentX, :currentY

  def initialize
    @currentX = 0
    @currentY = 0
  end
end

santa = Santa.new
roboSanta = Santa.new
currentlyNormalSanta = true

housesHashMap = Hash.new(0)
housesHashMap[[0,0]] += 1

splitArray = file.split(//)

for direction in splitArray do
    case currentlyNormalSanta
    when true
        case direction
        when "^"
            santa.currentY += 1
            housesHashMap[[santa.currentX, santa.currentY]] += 1
        when "<"
            santa.currentX -= 1
            housesHashMap[[santa.currentX, santa.currentY]] += 1
        when "v"
            santa.currentY -= 1
            housesHashMap[[santa.currentX, santa.currentY]] += 1
        when ">"
            santa.currentX += 1
            housesHashMap[[santa.currentX, santa.currentY]] += 1
        end
    when false
    case direction
        when "^"
            roboSanta.currentY += 1
            housesHashMap[[roboSanta.currentX, roboSanta.currentY]] += 1
        when "<"
            roboSanta.currentX -= 1
            housesHashMap[[roboSanta.currentX, roboSanta.currentY]] += 1
        when "v"
            roboSanta.currentY -= 1
            housesHashMap[[roboSanta.currentX, roboSanta.currentY]] += 1
        when ">"
            roboSanta.currentX += 1
            housesHashMap[[roboSanta.currentX, roboSanta.currentY]] += 1
        end
    end
    currentlyNormalSanta = !currentlyNormalSanta
end

puts housesHashMap.length