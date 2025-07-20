# 💤 lazy-blake/lazyvim-config

> ⚡ A clean, fast, and aesthetic Neovim configuration powered by [LazyVim](https://github.com/LazyVim/LazyVim), customized for minimalism, productivity, and beauty.

![Screenshot](https://raw.githubusercontent.com/lazy-blake/lazyvim-config/main/assets/preview.png)

---

## 🌟 Features

- 🌓 **Tokyo Night theme** for a beautiful dark UI
- 🧠 Built-in LSP with Mason, Neodev, and formatting tools
- 🔍 Fuzzy finding with `fzf-lua`
- ✍️ GitHub Copilot support
- 📃 Rich statusline with `lualine`
- 💡 Lazy-loaded plugins for faster startup

---

## 📦 Plugins Highlight

| Plugin           | Purpose                        |
|------------------|--------------------------------|
| `tokyonight`     | Colorscheme                    |
| `nvim-lspconfig` | Language Server Protocol (LSP) |
| `copilot.lua`    | GitHub Copilot integration     |
| `neotest`        | Test runner                    |
| `fzf-lua`        | Fuzzy finder                   |
| `lualine.nvim`   | Statusline                     |

---

## 🚀 Installation

> 📌 Prerequisites:
> - Neovim 0.9+
> - `git`, `curl`, `ripgrep`, `fd` installed

### 1. Backup your current Neovim config (optional)

mv ~/.config/nvim ~/.config/nvim.backup

2. Clone this config

git clone https://github.com/lazy-blake/lazyvim-config ~/.config/nvim

3. Launch Neovim

nvim

LazyVim will automatically install the required plugins.


---

⚙️ Customization

All custom settings are under:

lua/
├── config/     # Options, keymaps, autocmds
└── plugins/    # Plugin specs and lazy-loading

To change the theme:

LazyVim.setup({ colorscheme = "tokyonight" })

To add a plugin, just drop a Lua file in lua/plugins/ with a plugin spec.


---

📸 Screenshots

> coming soon...



---

🤝 Contributing

Got ideas or improvements? Feel free to open a PR or issue.


---

🙌 Acknowledgements

LazyVim

NvChad

Neovim



---

📊 GitHub Stats

<p align="center">
  <img src="https://github-readme-stats.vercel.app/api?username=lazy-blake&show_icons=true&theme=tokyonight" width="400" />
  <img src="https://streak-stats.demolab.com?user=lazy-blake&theme=tokyonight" width="400"/>
</p>
