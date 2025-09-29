-- Introduction

-- Your body is made up of cells that contain DNA. Those cells regularly wear out and need replacing, which they achieve by dividing into daughter cells. In fact, the average human body experiences about 10 quadrillion cell divisions in a lifetime!

-- When cells divide, their DNA replicates too. Sometimes during this process mistakes happen and single pieces of DNA get encoded with the incorrect information. If we compare two strands of DNA and count the differences between them, we can see how many mistakes occurred. This is known as the "Hamming distance".

-- The Hamming distance is useful in many areas of science, not just biology, so it's a nice phrase to be familiar with :)
-- Instructions

-- Calculate the Hamming distance between two DNA strands.

-- We read DNA using the letters C, A, G and T. Two strands might look like this:

-- GAGCCTACTAACGGGAT
-- CATCGTAATGACGGCCT
-- ^ ^ ^  ^ ^    ^^

-- They have 7 differences, and therefore the Hamming distance is 7.
-- Implementation notes

-- The Hamming distance is only defined for sequences of equal length, so an attempt to calculate it between sequences of different lengths should not work.

local Hamming = {}

function Hamming.compute(a, b)
    local resultValue = 0
    if #a ~= #b then
        return error("strands must be of equal length")
    end
    for i = 1, #a do
        local subA = string.sub(a, i, i)
        local subB = string.sub(b, i, i)
        if subA ~= subB then
            resultValue = resultValue + 1
        end
    end
    return resultValue
end






local function assert_error(func, expected_msg)
    local ok, err = pcall(func)
    assert(not ok and tostring(err):match(expected_msg), "Expected error: " .. expected_msg .. ", got: " .. tostring(err))
end

assert(Hamming.compute("", "") == 0, "Test failed: empty strands")
assert(Hamming.compute("A", "A") == 0, "Test failed: single letter identical strands")
assert(Hamming.compute("G", "T") == 1, "Test failed: single letter different strands")
assert(Hamming.compute("GGACTGAAATCTG", "GGACTGAAATCTG") == 0, "Test failed: long identical strands")
assert(Hamming.compute("GGACGGATTCTG", "AGGACGGATTCT") == 9, "Test failed: long different strands")

assert_error(function() Hamming.compute("AATG", "AAA") end, "strands must be of equal length")
assert_error(function() Hamming.compute("ATA", "AGTG") end, "strands must be of equal length")
assert_error(function() Hamming.compute("", "G") end, "strands must be of equal length")
assert_error(function() Hamming.compute("G", "") end, "strands must be of equal length")


return Hamming
