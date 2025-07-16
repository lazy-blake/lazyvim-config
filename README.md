# 🧠 lazyvim-config

My personal Neovim setup based on **[LazyVim](https://github.com/LazyVim/LazyVim)**.  
Blazing fast, highly customizable, and ready for productivity.

---

## ⚡ Features

- Pre-configured IDE-like environment via `lazy.nvim`
- Smart defaults for LSP, Treesitter, Telescope, Git, and more
- Custom keymaps, options, and Autocmds in `lua/config/`
- Easy plugin extensions in `lua/plugins/`
- Fully documented and modular setup

---

## 🚀 Quick Start

### 1. Prerequisites

Make sure you have:

- Neovim **>= 0.9.0**
- Git **>= 2.19.0**
- A **Nerd Font** installed for icons
- A C compiler for Treesitter

### 2. Backup & Install

```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak

git clone https://github.com/lazy-blake/lazyvim-config.git ~/.config/nvim
````

### 3. Launch & Bootstrap

Run Neovim:

```bash
nvim
```

It will auto-install core plugins. Be patient — first startup may take a minute.

### 4. Check Your Setup

Within Neovim:

```vim
:checkhealth
```

Fix any leftover warnings.

---

## 🗂 Repository Structure

```text
~/.config/nvim/
├── init.lua               # LazyVim entry point
├── lua/
│   ├── config/
│   │   ├── options.lua    # Custom vim.opt settings
│   │   ├── keymaps.lua    # Extra key mappings
│   │   ├── autocmds.lua   # Auto commands
│   │   └── lazy.lua       # Lazy.nvim plugin config
│   └── plugins/           # Your own plugin specs
├── lazy-lock.json         # Locked plugin versions
├── stylua.toml            # Formatting rules
└── lazyvim.json           # Optional LazyVim overrides
```

---

## ✏️ Customize Plugins

To add or override plugins:

1. Edit or create a file in `lua/plugins/`, e.g.:

   ```lua
   return {
     { "numToStr/Comment.nvim", opts = {} },
     { "stevearc/oil.nvim", cmd = "Oil" },
   }
   ```
2. Restart Neovim or run:

   ```vim
   :Lazy sync
   ```

---

## 🎨 Tip: LazyExtras

Inside Neovim, run:

```vim
:LazyExtras
```

This reveals optional UI plugins, tools, and extras you can selectively enable.

---

## 🔧 Maintenance

* **Sync new plugins**:

  ```vim
  :Lazy sync
  ```
* **Check configuration health**:

  ```vim
  :checkhealth
  ```
* **Update plugins**:

  ```vim
  :Lazy update
  ```
* **Format code** (if configured):

  ```vim
  :PackerFormat
  ```

---

## 📸 Screenshots

coming soone

---

## 📚 Resources

* [LazyVim Docs](https://lazyvim.github.io)
* [lazy.nvim repo](https://github.com/folke/lazy.nvim)
* [LazyVim starter template](https://github.com/LazyVim/starter)

---

## 📝 License

Apache‑2.0 — 🚀 Use it, modify it, share it!

---

<sub>Feel free to ⭐ if you like this config, or open issues/PRs for suggestions!</sub>
