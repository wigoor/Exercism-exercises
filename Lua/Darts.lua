local Darts = {}

function Darts.score(x, y)
    if (x^2 + y^2 <= 1^2) then
        print "10 hit"
        return 10
    elseif (x^2 + y^2 < 5^2) then
        print "5 hit"
        return 5
    elseif (x^2 + y^2 == 5^2) then
        print "5 edge"
        return 5
    elseif (x^2 + y^2 < 10^2) then
        print "1 hit"
        return 1
    elseif x^2 + y^2 == 10^2 then
        print "1 edge"
        return 1
    elseif x^2 + y^2 > 10^2 then
        print "0 miss"
        return 0
    end
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

