-- put logic functions here using the Lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
-- don't be afraid to use custom logic functions. it will make many things a lot easier to maintain, for example by adding logging.
-- to see how this function gets called, check: locations/locations.json
-- example:
function ship_parts_required(n)
    local obj = Tracker:FindObjectForCode("ship_parts")
    local val = (obj.AcquiredCount >= tonumber(n))
    if ENABLE_DEBUG_LOG then
        print(string.format("ship_parts_required: count: %s, n: %s, val: %s", obj.AcquiredCount, n, val))
    end
    if val then
        return 1 -- 1 => access is in logic
    end
    return 0 -- 0 => no access
end
