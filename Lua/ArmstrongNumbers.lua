-- Instructions

-- An Armstrong number is a number that is the sum of its own digits each raised to the power of the number of digits.

-- For example:

--     9 is an Armstrong number, because 9 = 9^1 = 9
--     10 is not an Armstrong number, because 10 != 1^2 + 0^2 = 1
--     153 is an Armstrong number, because: 153 = 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
--     154 is not an Armstrong number, because: 154 != 1^3 + 5^3 + 4^3 = 1 + 125 + 64 = 190

-- Write some code to determine whether a number is an Armstrong number.

local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)

  if 0 > number then return false end

  local digits = tostring(number)
  local power = #digits
  local total = 0

  for digit in digits:gmatch("%d") do
    total = math.tointeger(total + tonumber(digit) ^ power)
  end
  return total == number
end

assert(ArmstrongNumbers.is_armstrong_number(0) == true, "Test failed: 0 should be Armstrong")
assert(ArmstrongNumbers.is_armstrong_number(5) == true, "Test failed: 5 should be Armstrong")
assert(ArmstrongNumbers.is_armstrong_number(10) == false, "Test failed: 10 should not be Armstrong")
assert(ArmstrongNumbers.is_armstrong_number(153) == true, "Test failed: 153 should be Armstrong")
assert(ArmstrongNumbers.is_armstrong_number(100) == false, "Test failed: 100 should not be Armstrong")
assert(ArmstrongNumbers.is_armstrong_number(9474) == true, "Test failed: 9474 should be Armstrong")
assert(ArmstrongNumbers.is_armstrong_number(9475) == false, "Test failed: 9475 should not be Armstrong")
assert(ArmstrongNumbers.is_armstrong_number(9926315) == true, "Test failed: 9926315 should be Armstrong")
assert(ArmstrongNumbers.is_armstrong_number(9926314) == false, "Test failed: 9926314 should not be Armstrong")

return ArmstrongNumbers
