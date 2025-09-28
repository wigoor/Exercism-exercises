local ArmstrongNumbers = {}


function ArmstrongNumbers.is_armstrong_number(number)

  if 0 > number then return false end

  local digits = tostring(number)
  local power = #digits
  local total = 0

  for digit in digits:gmatch("%d") do
    print(tonumber(digit) ^ power)
    total = math.tointeger(total + tonumber(digit) ^ power)
  end
  print (total .. " : " .. number)
  return total == number
end

ArmstrongNumbers.is_armstrong_number(154)
return ArmstrongNumbers
