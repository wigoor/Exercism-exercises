-- Introduction

-- Your friend Eliud inherited a farm from her grandma Tigist. Her granny was an inventor and had a tendency to build things in an overly complicated manner. The chicken coop has a digital display showing an encoded number representing the positions of all eggs that could be picked up.

-- Eliud is asking you to write a program that shows the actual number of eggs in the coop.

-- The position information encoding is calculated as follows:

--     Scan the potential egg-laying spots and mark down a 1 for an existing egg or a 0 for an empty spot.
--     Convert the number from binary to decimal.
--     Show the result on the display.

-- Example 1

-- Seven individual nest boxes arranged in a row whose first, third, fourth and seventh nests each have a single egg.

--  _ _ _ _ _ _ _
-- |E| |E|E| | |E|

-- Resulting Binary

-- 1011001

--  _ _ _ _ _ _ _
-- |1|0|1|1|0|0|1|

-- Decimal number on the display

-- 89
-- Actual eggs in the coop

-- 4
-- Example 2

-- Seven individual nest boxes arranged in a row where only the fourth nest has an egg.

--  _ _ _ _ _ _ _
-- | | | |E| | | |

-- Resulting Binary

-- 0001000

--  _ _ _ _ _ _ _
-- |0|0|0|1|0|0|0|

-- Decimal number on the display

-- 8
-- Actual eggs in the coop

-- 1
-- Instructions

-- Your task is to count the number of 1 bits in the binary representation of a number.
-- Restrictions

-- Keep your hands off that bit-count functionality provided by your standard library! Solve this one yourself using other basic tools instead.

local EliudsEggs = {}

function EliudsEggs.egg_count(number)
    local returnValue = 0
    while number > 0 do
        local remainder = number % 2
        returnValue = returnValue + remainder
        number = number // 2
    end
    return returnValue
end

assert(EliudsEggs.egg_count(0) == 0)
assert(EliudsEggs.egg_count(16) == 1)
assert(EliudsEggs.egg_count(89) == 4)
assert(EliudsEggs.egg_count(2000000000) == 13)

return EliudsEggs
