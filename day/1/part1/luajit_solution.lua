#!/usr/bin/env luajit
local function read_file(filename)
    local rows = {}
    for line in io.lines(filename) do
        local col1, col2 = line:match("(%d+)%s+(%d+)")
        if col1 and col2 then
            rows[#rows + 1] = { tonumber(col1), tonumber(col2) }
        end
    end
    return rows
end

local function compute_difference(rows)
    local col1, col2 = {}, {}
    for _, row in ipairs(rows) do
        col1[#col1 + 1] = row[1]
        col2[#col2 + 1] = row[2]
    end
    table.sort(col1)
    table.sort(col2)
    local total_diff = 0
    for i = 1, #col1 do
        total_diff = total_diff + math.abs(col1[i] - col2[i])
    end
    return total_diff
end

-- Main script
local filename = arg[1]
local rows = read_file(filename)
local result = compute_difference(rows)
print(result)