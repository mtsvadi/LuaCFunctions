-- Very simple replication of the switch function in Lua.

local function switch(input)
    return function(cases)
        for i, v in pairs(cases) do
            if i == input then
                return v()
            end
        end
        return cases.default()
    end
end

-- Example Usage:

print(switch("value"){
    value = function()
        return "value"
    end;
    default = function()
        return "default"
    end;
})

print("HATE BLACK PEOPLE")
