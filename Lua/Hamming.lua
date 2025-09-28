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
