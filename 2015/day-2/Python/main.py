file = open("day2.txt", "r")

totalAreaRequired = 0
totalRibbon = 0

for line in file:
    # line = "2x3x4"
    # line = "1x1x10"
    # 2*l*w + 2*w*h + 2*h*l    
    lineArray = line.strip().split("x")
    print(lineArray)

    length = int(lineArray[0])
    width = int(lineArray[1])
    height = int(lineArray[2])

    # primaryArea = (length*width)
    # secondaryArea = (width*height)
    # tertiaryArea = (length*height)

    # boxSurfaceArea = 2*primaryArea + 2*secondaryArea + 2*tertiaryArea

    # minArea = min(primaryArea, secondaryArea, tertiaryArea)

    # finalAreaRequied = boxSurfaceArea + minArea
    
    # totalAreaRequired += finalAreaRequied

    ############## Part 2
    
    sortedArray = sorted([length, width, height])
    print(sortedArray)

    smallestDimension = sortedArray[0]
    secondSmallestDimension = sortedArray[1]

    print("smallestDimension", smallestDimension, "secondSmallestDimension", secondSmallestDimension)

    wrappingRibbon = int(smallestDimension) + int(smallestDimension) + int(secondSmallestDimension) + int(secondSmallestDimension)

    print("wrappingRibbon", wrappingRibbon)

    cubicVolume = length * width * height

    print("cubicVolume", cubicVolume)

    ribbonRequired = wrappingRibbon + cubicVolume

    totalRibbon += ribbonRequired

    print("totalRibbon", totalRibbon)

# print(totalAreaRequired)
print(totalRibbon)