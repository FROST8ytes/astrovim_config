-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<S-h>"] = { "<cmd>bprevious<cr>", desc = "previous buffer" },
    ["<S-l>"] = { "<cmd>bnext<cr>", desc = "next buffer" },
    -- ["<C-Up>"] = { "<cmd>resize -2<cr>", desc = "decrease width of buffer" },
    -- ["<C-Down>"] = { "<cmd>resize +2<cr>", desc = "increase width of buffer" },
    -- ["<C-Left>"] = { "<cmd>vertical resize -2<cr>", desc = "decrease height of buffer" },
    -- ["<C-Right"] = { "<cmd>vertical resize +2<cr>", desc = "increase height of buffer" },
    ["<A-j>"] = { "<cmd>m .+1<cr>==gi", desc = "move line below" },
    ["<A-k>"] = { "<cmd>m .-2<cr>==gi", desc = "move line above" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>c"] = {
      function()
        local bufs = vim.fn.getbufinfo { buflisted = true }
        require("astronvim.utils.buffer").close(0)
        if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
      end,
      desc = "Close buffer and open Alpha dashboard if no other buffers are opened",
    },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  i = {
    -- ["jk"] = { "<esc>", desc = "Quick escape to normal mode" },
    -- ["kj"] = { "<esc>", desc = "Quick escape to normal mode" },
  },
  v = {
    ["<"] = { "<gv", desc = "Unindent highlighted line and stay highlighted" },
    [">"] = { ">gv", desc = "Indent highlighted line and stay highlighted" },
    ["<A-j>"] = { "<cmd>m .+1<cr>==gi", desc = "move line below" },
    ["<A-k>"] = { "<cmd>m .-2<cr>==gi", desc = "move line above" },
  },
  x = {
    ["<A-j>"] = { "<cmd>m .+1<cr>==gi", desc = "move line below" },
    ["<A-k>"] = { "<cmd>m .-2<cr>==gi", desc = "move line above" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["jk"] = { "<esc>", desc = "Enter normal mode" },
  },
}
