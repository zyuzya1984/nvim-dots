require("render-markdown").setup({
  enabled = true,
  render_modes = {"n"},
  html  = { enabled = false },
  latex = { enabled = true },
  yaml  = { enabled = false },
  heading = {
    sign        = false,
    icons       = { "󰉫 ", "󰉬 ", "󰉭 ", "󰉮 " },
    width       = "block",
    backgrounds = { "", "", "", "" },
  },
  dash = { icon = "─", width = "full" },
  bullet = { icons = { "󰧟 ", "󰧞 ", "󰧝 " } },
  code = {
    sign               = false,
    style              = "language",
    left_pad           = 0,
    right_pad          = 0,
    disable_background = true,
  },
  checkbox = {
    unchecked = { icon = "󰄱 " },
    checked   = { icon = "󰱒 " },
  },
  quote = { icon = "▎" },
  link = {
    image     = "󰥶 ",
    hyperlink = "󰌹 ",
    email     = "󰇰 ",
  },
  pipe_table = { style = "normal", cell = "trimmed" },
  callout = {
    ["note"]    = { raw = "[!NOTE]",    rendered = "󰋽 Note",    highlight = "DiagnosticInfo"  },
    ["tip"]     = { raw = "[!TIP]",     rendered = "󰌶 Tip",     highlight = "DiagnosticOk"   },
    ["warning"] = { raw = "[!WARNING]", rendered = "󰀦 Warning", highlight = "DiagnosticWarn"  },
    ["danger"]  = { raw = "[!DANGER]",  rendered = "󰚑 Danger",  highlight = "DiagnosticError" },
  },
})
vim.keymap.set("n", "<leader>mr", require("render-markdown").toggle, { desc = "Markdown: toggle render" })
