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
