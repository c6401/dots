kk mob sshd
kk mob ssh
# acquire lock in termux
termux-wake-lock

cd dots
git pull origin main
stow --no-folding --adopt termux
cd ..
rm -rf ~/.config/nvim
# rm -rf ~/.local/share/nvim
git clone https://github.com/nvim-lua/kickstart.nvim.git ~/.config/nvim
# git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
# rm -rf ~/.config/nvim/pack/github/start/copilot.vim
git clone https://github.com/github/copilot.vim.git  ~/.config/nvim/pack/github/start/copilot.vim
:Copilot setup

# git clone --depth 1 https://github.com/LazyVim/starter ~/.config/nvim
# git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
# nvim

# git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# mkdir -p ~/.config/nvim/lua/custom/plugins
# nv ~/.config/nvim/lua/custom/plugins/init.lua
# i

# M.plugins = {
#   ["github/copilot.vim"] = {
#     lazy = false,
#     config = function()
#       -- Your configuration here. For example, to disable the Copilot tab completion mapping:
#       -- vim.g.copilot_no_tab_map = true
#     end
#   }
# }

# :PackerSync

# {
#   "pack/github/start/copilot.vim",
#   lazy = false,
#   config = function()  -- Mapping tab is already used by NvChad
#     vim.g.copilot_no_tab_map = true;
#     vim.g.copilot_assume_mapped = true;
#     vim.g.copilot_tab_fallback = "";
#   -- The mapping is set to other key, see custom/lua/mappings
#   -- or run <leader>ch to see copilot mapping section
#   end
# },

# M.copilot = {
#   i = {
#     ["<C-l>"] = {
#       function()
#         vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
#       end,
#       "Copilot Accept",
#        {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
#       }
#   }
# }

# curl -L -o JetBrainsMono.zip https://download.jetbrains.com/fonts/JetBrainsMono-2.242.zip
# unzip JetBrainsMono.zip -d JetBrainsMono
# mkdir -p ~/.local/share/fonts
# ls JetBrainsMono/fonts/ttf/*.ttf
# cp JetBrainsMono/fonts/ttf/JetBrainsMono-Regular.ttf ~/.termux/font.ttf
# rm -rf JetBrainsMono.zip JetBrainsMono

