local file = "/workspace/advent-of-code_devcontainer/2015/day-5/Lua/day5.txt"

local niceCount = 0

for line in io.lines(file) do

    -- -- Check bad strings
    -- if string.match(line, "ab") then goto continue end
    -- if string.match(line, "cd") then goto continue end
    -- if string.match(line, "pq") then goto continue end
    -- if string.match(line, "xy") then goto continue end

    -- -- Check number of vowels
    -- _, numVowels = string.gsub(line, "[aeiou]", "")
    -- if numVowels < 3 then goto continue end

    -- -- Check double character
    -- for i = 1, #line do
    --     if i == 1 then goto doubleCharacterContinue end

    --     local currentChar = string.sub(line, i, i)
    --     local prevChar = string.sub(line, i - 1, i - 1)

    --     if currentChar == prevChar then
    --         niceCount = niceCount + 1
    --         break
    --     end

    --     ::doubleCharacterContinue::
    -- end

    -- print(line)

    local alphabet = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s",
                      "t", "u", "v", "w", "x", "y", "z"}

    --   Check one letter seperation
    seperationSuccess = false
    for index, char in ipairs(alphabet) do
        local pair = char .. "%l" .. char
        if string.match(line, pair) == nil then
            goto seperationContinue
        else
            seperationSuccess = true
            break
        end

        ::seperationContinue::
    end

    if seperationSuccess == false then goto continue end

    -- Pair of any two letters
    local charPairs = {}
    for i = 2, #line do
        local firstChar = string.sub(line, i - 1, i - 1)
        local secondChar = string.sub(line, i, i)

        if charPairs[firstChar .. secondChar] then
            savedIndex = charPairs[firstChar .. secondChar]
            if math.abs(savedIndex - i) >= 2 then
                print(line)
                niceCount = niceCount + 1
                goto continue
            end
        else
            charPairs[firstChar .. secondChar] = i
        end
    end

    ::continue::
end

print(niceCount)
