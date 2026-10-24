local M = {}

M.file_size = function()
  local file = vim.fn.expand("%:p")
  if file == "" or vim.fn.filereadable(file) == 0 then 
    return "" 
  end

  local bytes = vim.fn.getfsize(file)
  if bytes <= 0 then 
    return "0B" 
  end

  local suffixes = { "B", "K", "M", "G" }
  
  local i = math.min(math.floor(math.log(bytes) / math.log(1024)) + 1, #suffixes)
  
  local size = bytes / (1024 ^ (i - 1))
  
  local size_str = string.format(size % 1 == 0 and "%.0f" or "%.1f", size)
  
  return size_str .. suffixes[i]
end

return M

