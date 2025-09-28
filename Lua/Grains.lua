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
