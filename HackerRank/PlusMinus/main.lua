--[[
Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with  places after the decimal.

Note: This challenge introduces precision problems. The test cases are scaled to six decimal places, though answers with absolute error of up to  are acceptable.
--]]

local counts = {0, 0, 0}
local total = 0

local n = io.read("*n")
while true do
    n = io.read("*n")
    if n == nil then
        break
    end

    if n > 0 then
        counts[1] = counts[1] + 1
    elseif n < 0 then
        counts[2] = counts[2] + 1
    else
        counts[3] = counts[3] + 1
    end
    total = total + 1
end

print(string.format("%.6f\n%.6f\n%.6f", counts[1]/total, counts[2]/total, counts[3]/total))

