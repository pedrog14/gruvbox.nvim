local M = {}
local uv = vim.uv or vim.loop

---@param cwd string
M.git_id = function(cwd)
  local id
  if vim.fn.has("nvim-0.10.0") == 1 then
    id = vim.system({ "git", "rev-parse", "HEAD" }, { cwd = cwd, text = true }):wait().stdout
  else
    id = vim.fn.system("git -C " .. cwd .. " rev-parse HEAD")
  end
  return id and id:sub(1, -2) or ""
end

---@param groups GruvboxHighlights
---@param opts GruvboxConfig
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

---@param file string
M.read = function(file)
  local fd = assert(io.open(file, "r"))
  local data = fd:read("*a")
  fd:close()
  return data
end

---@param file string
---@param content string
M.write = function(file, content)
  vim.fn.mkdir(vim.fn.fnamemodify(file, ":h"), "p")
  local fd = assert(io.open(file, "w+"))
  fd:write(content)
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
      luanil = { object = true, array = true },
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
