local M = {}

---@param groups GruvboxHighlights
---@param opts GruvboxConfig
---@return GruvboxHighlightsResolved
M.resolve = function(groups, opts)
    for _, hl in pairs(groups) do
        if type(hl.style) == "string" then
            local style = opts.style[hl.style]
            for k, v in pairs(style) do
                hl[k] = v
            end
            hl.style = nil
        end
    end
    return groups
end

---@param cwd string
---@return string
M.git_id = function(cwd)
    if vim.fn.has("nvim-0.10.0") == 1 then
        return vim.system({ "git", "rev-parse", "HEAD" }, { cwd = cwd, text = true }):wait().stdout
    else
        return vim.fn.system("git -C " .. cwd .. " rev-parse HEAD")
    end
end

local uv = vim.uv or vim.loop

---@param file string
M.read = function(file)
    local fd = assert(io.open(file, "r"))
    ---@type string
    local data = fd:read("*a")
    fd:close()
    return data
end

---@param file string
---@param contents string
M.write = function(file, contents)
    vim.fn.mkdir(vim.fn.fnamemodify(file, ":h"), "p")
    local fd = assert(io.open(file, "w+"))
    fd:write(contents)
    fd:close()
end

M.cache = {}

---@param key string
---@return string
M.cache.file = function(key)
    return vim.fn.stdpath("cache") .. "/gruvbox-" .. key .. ".json"
end

---@param key string
M.cache.read = function(key)
    ---@type boolean, GruvboxCache
    local ok, ret = pcall(function()
        return vim.json.decode(M.read(M.cache.file(key)), {
            luanil = {
                object = true,
                array = true,
            },
        })
    end)
    return ok and ret or nil
end

---@param key string
---@param data GruvboxCache
M.cache.write = function(key, data)
    pcall(M.write, M.cache.file(key), vim.json.encode(data))
end

M.cache.clear = function()
    for _, style in ipairs({ "dark", "light" }) do
        uv.fs_unlink(M.cache.file(style))
    end
end

return M
