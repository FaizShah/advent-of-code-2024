#!/usr/bin/env luajit

-- Function to read and parse the file
local function read_file(filename)
    local col1, col2 = {}, {}
    for line in io.lines(filename) do
        local a, b = line:match("(%d+)%s+(%d+)")
        if a and b then
            col1[#col1 + 1] = tonumber(a)
            col2[#col2 + 1] = tonumber(b)
        end
    end
    return col1, col2
end

-- Function to compute the total difference
local function compute_difference(col1, col2)
    table.sort(col1)
    table.sort(col2)
    local total = 0
    for i = 1, #col1 do
        total = total + math.abs(col1[i] - col2[i])
    end
    return total
end

-- Main script
local col1, col2 = read_file(arg[1])
print(compute_difference(col1, col2))