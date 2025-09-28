local function square_of_sum(n)
    local sum = 0
    while n > 0 do
        sum = sum + n
        n = n - 1
    end
    print (sum^2)
    return sum^2
end

local function sum_of_squares(n)
    local sum = 0
    while n > 0 do
        sum = sum + n^2
        n = n - 1
    end
    print (sum)
    return sum
end

local function difference_of_squares(n)
    return square_of_sum(n) - sum_of_squares(n)
end

--should square the sum of the numbers up to the given number
assert(225 == square_of_sum(5))
assert(3025 == square_of_sum(10))
assert(25502500 == square_of_sum(100))
--should sum the squares of the numbers up to the given number
assert(55 == sum_of_squares(5))
assert(385 == sum_of_squares(10))
assert(338350 == sum_of_squares(100))
--should subtract sum of squares from square of sum
assert(0 == difference_of_squares(0))
assert(170 == difference_of_squares(5))
assert(2640 == difference_of_squares(10))
assert(25164150 == difference_of_squares(100))

return { square_of_sum = square_of_sum, sum_of_squares = sum_of_squares, difference_of_squares = difference_of_squares }
