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
