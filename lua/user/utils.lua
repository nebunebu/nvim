function _G.recompile()
  if vim.bo.buftype == "" then
    if vim.fn.exists(":LspStop") ~= 0 then
      vim.cmd("LspStop")
    end

    for name, _ in pairs(package.loaded) do
      if name:match("^user") then
        package.loaded[name] = nil
      end
    end

    dofile(vim.env.MYVIMRC)
    vim.cmd("PackerCompile")
    vim.notify("Wait for Compile Done", vim.log.levels.INFO)
  else
    vim.notify("Not available in this window/buffer", vim.log.levels.INFO)
  end
end

function _G.format_code()
  return vim.lsp.buf.format({ async = true })
end
