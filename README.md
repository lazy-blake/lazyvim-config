# ⚡ lazy-blake's LazyVim Config

[![Windows](https://img.shields.io/badge/OS-Windows-00adef?logo=windows\&logoColor=white)](https://microsoft.com/windows)
[![Neovim](https://img.shields.io/badge/Neovim-0.9+-57A143?logo=neovim\&logoColor=white)](https://neovim.io)
[![Status](https://img.shields.io/badge/status-Customized-success?style=flat-square\&color=brightgreen)](#)
[![License](https://img.shields.io/github/license/lazy-blake/lazyvim-config?color=blue)](LICENSE)
[![GitHub Repo stars](https://img.shields.io/github/stars/lazy-blake/lazyvim-config?style=social)](https://github.com/lazy-blake/lazyvim-config)
[![Issues](https://img.shields.io/github/issues/lazy-blake/lazyvim-config)](https://github.com/lazy-blake/lazyvim-config/issues)

> ⚡ A blazing-fast, aesthetic, and highly customized LazyVim setup tailored for Windows power users.

---

## ✨ Features

* 🖥️ **Snacks.nvim Dashboard** – Fully custom dual-pane layout with animated ASCII image integration
* 🎨 **Gruvbox Theme** – Clean and modern aesthetic across the UI
* 🌈 **Rainbow Delimiters** – Enhanced syntax visibility for nested code
* 🪄 **Trouble.nvim** – Visual diagnostics with icon-enhanced interface
* 💡 **Icons + Terminal Image Support** – Thanks to `ascii-image-converter`
* ⚙️ Fully optimized for **Windows** (PowerShell support included)
* 🧠 **LSP & Autocompletion** – Out-of-the-box support for major languages with Mason

---

## 🧩 Plugin Stack (Highlights)

| Plugin                            | Purpose                        |
| --------------------------------- | ------------------------------ |
| `folke/lazy.nvim`                 | Lazy plugin manager            |
| `folke/snacks.nvim`               | UI dashboard (Snacks UI)       |
| `folke/trouble.nvim`              | Diagnostics sidebar            |
| `HiPhish/rainbow-delimiters.nvim` | Bracket highlighting           |
| `ascii-image-converter`           | Terminal-based image rendering |
| `neovim/nvim-lspconfig`           | Built-in LSP support           |
| `williamboman/mason.nvim`         | LSP/DAP installer              |

---

## 🛠 Installation

### 1. 📦 Prerequisites

Make sure the following are installed:

* [Neovim 0.9+](https://neovim.io)
* [Git](https://git-scm.com/downloads)
* [PowerShell 7+](https://github.com/PowerShell/PowerShell)
* [ascii-image-converter](https://github.com/TheZoraiz/ascii-image-converter)

```powershell
scoop install git neovim
scoop install gcc  # required by some LSP servers
scoop install ascii-image-converter
```

### 2. 🚀 Setup LazyVim Config

```powershell
cd $env:USERPROFILE\AppData\Local
git clone https://github.com/lazy-blake/lazyvim-config.git nvim
```

Launch Neovim:

```powershell
nvim
```

LazyVim will bootstrap and install everything.

---

## 🖼 Custom ASCII Image Setup

To display random ASCII art in your Snacks dashboard:

1. Install [`ascii-image-converter`](https://github.com/TheZoraiz/ascii-image-converter)
2. Add PNG or JPG files to `~/AppData/Local/nvim/data/ascii`
3. It will automatically pick and render a new image each time you open Neovim

```powershell
mkdir $env:LOCALAPPDATA\nvim\data\ascii
```

---

## 📸 Preview

> <img width="1898" height="1057" alt="Screenshot 2025-07-20 142620" src="https://github.com/user-attachments/assets/7be76888-1b94-4dde-b4ac-fb06cfe3f612" />


---

## 🧠 Tips

* Use `:checkhealth` to verify LSP and plugin health
* Add more ASCII art to increase dashboard variety
* Customize your keybindings in `lua/config/keymaps.lua`
* Use `:Lazy` to manage plugins

---

## 🙌 Credits

* [LazyVim](https://github.com/LazyVim/LazyVim) by folke
* [ascii-image-converter](https://github.com/TheZoraiz/ascii-image-converter)
* [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)

---

## 📬 Contact

* GitHub: [lazy-blake](https://github.com/lazy-blake)
* Feel free to fork, star, or raise an issue!

---

> ⚙️ Crafted with 💻 on Windows for Neovim lovers.
