-- Introduction

-- There once was a wise servant who saved the life of a prince. The king promised to pay whatever the servant could dream up. Knowing that the king loved chess, the servant told the king he would like to have grains of wheat. One grain on the first square of a chessboard, with the number of grains doubling on each successive square.
-- Instructions

-- Calculate the number of grains of wheat on a chessboard.

-- A chessboard has 64 squares. Square 1 has one grain, square 2 has two grains, square 3 has four grains, and so on, doubling each time.

-- Write code that calculates:

--     the number of grains on a given square
--     the total number of grains on the chessboard

local grains = {}

function grains.square(n)
    local returnValue = 1.0
    for i = 2, n do
        returnValue = returnValue * 2
    end
    return returnValue
end

function grains.total()
    local returnValue = 0
    for i = 1, 64 do
        returnValue = returnValue + grains.square(i)
    end
    return returnValue
end

assert(grains.square(1) == 1, "Test failed: grains.square(1) should be 1")
assert(grains.square(2) == 2, "Test failed: grains.square(2) should be 2")
assert(grains.square(3) == 4, "Test failed: grains.square(3) should be 4")
assert(grains.square(4) == 8, "Test failed: grains.square(4) should be 8")
assert(grains.square(16) == 32768, "Test failed: grains.square(16) should be 32768")
assert(grains.square(32) == 2147483648, "Test failed: grains.square(32) should be 2147483648")
assert(grains.square(64) == 9223372036854775808, "Test failed: grains.square(64) should be 9223372036854775808")
assert(grains.total() == 18446744073709551615, "Test failed: grains.total() should be 18446744073709551615")

return grains
