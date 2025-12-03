file = open("day2.txt", "r")

totalAreaRequired = 0

for line in file:
    # 2*l*w + 2*w*h + 2*h*l    
    lineArray = line.split("x")

    length = int(lineArray[0])
    width = int(lineArray[1])
    height = int(lineArray[2])

    primaryArea = (length*width)
    secondaryArea = (width*height)
    tertiaryArea = (length*height)

    boxSurfaceArea = 2*primaryArea + 2*secondaryArea + 2*tertiaryArea

    minArea = min(primaryArea, secondaryArea, tertiaryArea)

    finalAreaRequied = boxSurfaceArea + minArea
    
    totalAreaRequired += finalAreaRequied

print(totalAreaRequired)