local Darts = {}

function Darts.score(x, y)
    local dartDistance = x^2 + y^2
    local score = 0
    if (dartDistance <= 1) then
        score = 10
    elseif (dartDistance <= 5^2) then
        score = 5
    elseif (dartDistance <= 10^2) then
        score = 1
    end
    return score
end

assert(Darts.score(-9, 9) == 0)
assert(Darts.score(0, 10) == 1)
assert(Darts.score(-5, 0) == 5)
assert(Darts.score(0, -1) == 10)
assert(Darts.score(0, 0) == 10)
assert(Darts.score(-0.1, -0.1) == 10)
assert(Darts.score(0.7, 0.7) == 10)
assert(Darts.score(0.8, -0.8) == 5)
assert(Darts.score(-3.5, 3.5) == 5)
assert(Darts.score(-3.6, -3.6) == 1)
assert(Darts.score(-7.0, 7.0) == 1)
assert(Darts.score(7.1, -7.1) == 0)
assert(Darts.score(0.5, -4) == 5)

return Darts

