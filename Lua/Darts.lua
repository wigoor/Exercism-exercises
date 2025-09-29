-- Instructions

-- Calculate the points scored in a single toss of a Darts game.

-- Darts is a game where players throw darts at a target.

-- In our particular instance of the game, the target rewards 4 different amounts of points, depending on where the dart lands:

-- Our dart scoreboard with values from a complete miss to a bullseye

--     If the dart lands outside the target, player earns no points (0 points).
--     If the dart lands in the outer circle of the target, player earns 1 point.
--     If the dart lands in the middle circle of the target, player earns 5 points.
--     If the dart lands in the inner circle of the target, player earns 10 points.

-- The outer circle has a radius of 10 units (this is equivalent to the total radius for the entire target), the middle circle a radius of 5 units, and the inner circle a radius of 1. Of course, they are all centered at the same point — that is, the circles are concentric defined by the coordinates (0, 0).

-- Given a point in the target (defined by its Cartesian coordinates x and y, where x and y are real), calculate the correct score earned by a dart landing at that point.

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

