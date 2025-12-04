local file = "day5.txt"

local niceCount = 0

for line in io.lines(file) do

    -- Check bad strings
    if string.match(line, "ab") then goto continue end
    if string.match(line, "cd") then goto continue end
    if string.match(line, "pq") then goto continue end
    if string.match(line, "xy") then goto continue end

    -- Check number of vowels
    _, numVowels = string.gsub(line, "[aeiou]", "")
    if numVowels < 3 then goto continue end

    -- Check double character
    for i = 1, #line do
        if i == 1 then goto doubleCharacterContinue end

        local currentChar = string.sub(line, i, i)
        local prevChar = string.sub(line, i - 1, i - 1)

        if currentChar == prevChar then
            niceCount = niceCount + 1
            break
        end

        ::doubleCharacterContinue::
    end

    -- print(line)

    ::continue::
end

print(niceCount)
