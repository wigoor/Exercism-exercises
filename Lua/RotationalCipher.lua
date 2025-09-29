-- Instructions

-- Create an implementation of the rotational cipher, also sometimes called the Caesar cipher.

-- The Caesar cipher is a simple shift cipher that relies on transposing all the letters in the alphabet using an integer key between 0 and 26. Using a key of 0 or 26 will always yield the same output due to modular arithmetic. The letter is shifted for as many values as the value of the key.

-- The general notation for rotational ciphers is ROT + <key>. The most commonly used rotational cipher is ROT13.

-- A ROT13 on the Latin alphabet would be as follows:

-- Plain:  abcdefghijklmnopqrstuvwxyz
-- Cipher: nopqrstuvwxyzabcdefghijklm

-- It is stronger than the Atbash cipher because it has 27 possible keys, and 25 usable keys.

-- Ciphertext is written out in the same formatting as the input including spaces and punctuation.
-- Examples

--     ROT5 omg gives trl
--     ROT0 c gives c
--     ROT26 Cool gives Cool
--     ROT13 The quick brown fox jumps over the lazy dog. gives Gur dhvpx oebja sbk whzcf bire gur ynml qbt.
--     ROT13 Gur dhvpx oebja sbk whzcf bire gur ynml qbt. gives The quick brown fox jumps over the lazy dog.

local rotational_cipher = {
  rotate = function(input, key)
    local returnValue = ""
    for i = 1, #input do
        local char = string.sub(input, i, i)
        local charBase = string.byte(char:lower() == char and "a" or "A")
        local charOffset = string.byte(char) - charBase
        local charNewOffset = (charOffset + key) % 26

        if char:match("%a") then
            returnValue = returnValue .. string.char(charBase + charNewOffset)
        else
            returnValue = returnValue .. char
        end

    end

    print (returnValue)
    return returnValue
  end
}

assert(rotational_cipher.rotate('a', 0) == 'a')
assert(rotational_cipher.rotate('a', 1) == 'b')
assert(rotational_cipher.rotate('a', 26) == 'a')
assert(rotational_cipher.rotate('m', 13) == 'z')
assert(rotational_cipher.rotate('n', 13) == 'a')
assert(rotational_cipher.rotate('OMG', 5) == 'TRL')
assert(rotational_cipher.rotate('O M G', 5) == 'T R L')
assert(rotational_cipher.rotate('Testing 1 2 3 testing', 4) == 'Xiwxmrk 1 2 3 xiwxmrk')
assert(rotational_cipher.rotate("Let's eat, Grandma!", 21) == "Gzo'n zvo, Bmviyhv!")
assert(rotational_cipher.rotate('The quick brown fox jumps over the lazy dog.', 13) == 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.')
