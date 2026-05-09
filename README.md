OS-agnostic terminal configurations (infra as code)

## 🚀 Quick Start
```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply <your-github-username>
```

---

## 🛠  Toolbox

### 1. Core Infrastructure
* **Chezmoi:** The source of truth. Manages all dotfiles via templates to handle OS-specific paths (Homebrew on Mac vs. Local Bin on Linux).
* **Mise:**  Replaces `nvm`, `sdkman`, `jenv`, and `pyenv`. It swaps versions of Java, Node, and Python instantly based on your current directory.
* **Zsh:** Framework-less configuration. Purged of Oh-My-Zsh bloat to ensure the shell is ready the millisecond the window opens.

### 2. High-Performance CLI Tools
* **Eza:** Modern `ls` with icons and Git integration. Configured with a defensive fallback in `~/.aliases`.
* **Starship:** A cross-platform, Rust-based prompt. Highly customizable for cloud context (OpenShift/K8s/AWS).
* **Atuin:** Replaces standard history with a SQLite database, allowing for encrypted, searchable command history.
* **Zoxide:** A smarter `cd` command (`z`) that learns your frequent paths.
* **Fzf:** A fuzzy finder used for interactive history searches and cloud profile switching.

### 3. Terminals & Multiplexers
* **WezTerm (Ubuntu):** GPU-accelerated, configured via Lua. Currently set to **font-size 10.5**.
* **iTerm2 (macOS):** Configured with **OSC 52** support to bridge the system clipboard to remote sessions.
* **Tmux:** Persistent terminal sessions with a unified configuration for window management and splits.

---

## 📂 The Alias Architecture
Aliases are strictly categorized in `~/.aliases` for mental mapping:
1.  **Nav & Directories:** Smart navigation and `eza` logic.
2.  **System & Clipboard:** Cross-platform `pbcopy`/`pbpaste` (Wayland/X11/macOS).
3.  **Shell Management:** Shortcuts for `edit-zshrc`, `edit-aliases`, and `reload`.
4.  **Git:** Core workflow abbreviations.
5.  **Runtimes:** Maven, NPM, and `.nvmrc` automation.
6.  **Docker:** Clean table formatting for containers.
7.  **Terraform:** Includes `tflint` and `trivy` security scanning.
8.  **AWS:** Interactive profile switching via `fzf`.
9.  **Azure:** Interactive subscription and resource group management.

---

## 📋 Standard Operating Procedures (SOP)

>  Never edit a file in your `$HOME` directory directly.

1.  **Modify Configuration:** `chezmoi edit <file>` (e.g., `chezmoi edit ~/.aliases`).
2.  **Generate & Deploy:** `chezmoi apply`.
3.  **Hot Reload:** `reload` (alias for `source ~/.zshrc`).
4.  **Sync Machines:** `git push` from the source directory, then `chezmoi update` on the other machine.

