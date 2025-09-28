local is_isogram = function(s)
    local seen = {}
    if #s == 0 then return true end
    for i = 1, #s do
        local char = string.sub(string.lower(s), i, i)
        if char ~= "-" and char ~= " " then
            if seen[char] then
                return false
            end
            seen[char] = true
        end
    end
    return true
end

assert(is_isogram('') == true, "Test failed: empty string")
assert(is_isogram('isogram') == true, "Test failed: isogram with only lower case characters")
assert(is_isogram('eleven') == false, "Test failed: word with one duplicated character")
assert(is_isogram('zzyzx') == false, "Test failed: word with one duplicated character from the end of the alphabet")
assert(is_isogram('subdermatoglyphic') == true, "Test failed: longest reported english isogram")
assert(is_isogram('Alphabet') == false, "Test failed: word with duplicated character in mixed case")
assert(is_isogram('alphAbet') == false, "Test failed: word with duplicated character in mixed case, lowercase first")
assert(is_isogram('thumbscrew-japingly') == true, "Test failed: hypothetical isogrammic word with hyphen")
assert(is_isogram('thumbscrew-jappingly') == false, "Test failed: hypothetical word with duplicated character following hyphen")
assert(is_isogram('six-year-old') == true, "Test failed: isogram with duplicated hyphen")
assert(is_isogram('Emily Jung Schwartzkopf') == true, "Test failed: made-up name that is an isogram")
assert(is_isogram('accentor') == false, "Test failed: duplicated character in the middle")
assert(is_isogram('angola') == false, "Test failed: same first and last characters")
assert(is_isogram('up-to-date') == false, "Test failed: word with duplicated character and with two hyphens")