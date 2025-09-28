local gigasecond = {}

function gigasecond.anniversary(any_date)
    local gigasec = 1000000000
    local returnValue = any_date + gigasec
    return os.date("%m/%d/%y",returnValue)
end

-- Test 1
local actual = gigasecond.anniversary(os.time({ year = 2011, month = 3, day = 25, hour = 0, min = 0, sec = 0 }))
local expectedDate = os.date('%x', os.time({ year = 2042, month = 12, day = 1, hour = 0, min = 0, sec = 0 }))
assert(actual == expectedDate, "Test 1 failed: expected " .. expectedDate .. ", got " .. actual)

-- Test 2
local actual = gigasecond.anniversary(os.time({ year = 1977, month = 5, day = 13, hour = 0, min = 0, sec = 0 }))
local expectedDate = os.date('%x', os.time({ year = 2009, month = 1, day = 19 }))
assert(actual == expectedDate, "Test 2 failed: expected " .. expectedDate .. ", got " .. actual)

-- Test 3
local actual = gigasecond.anniversary(os.time({ year = 1999, month = 7, day = 19 }))
local expectedDate = os.date('%x', os.time({ year = 2031, month = 3, day = 27 }))
assert(actual == expectedDate, "Test 3 failed: expected " .. expectedDate .. ", got " .. actual)

-- Test 4
local actual = gigasecond.anniversary(os.time({ year = 1993, month = 8, day = 17 }))
local expectedDate = os.date('%x', os.time({ year = 2025, month = 4, day = 25 }))
assert(actual == expectedDate, "Test 4 failed: expected " .. expectedDate .. ", got " .. actual)

return gigasecond