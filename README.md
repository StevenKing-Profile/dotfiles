OS-agnostic terminal configurations (infra as code)

## 🚀 Quick Start
```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply <your-github-username>
```

---

## 🛠  Toolbox

### 1. Core Infrastructure
* **Chezmoi:** The source of truth. Manages all dotfiles via templates so OS-agnostic 
* **Mise:**  Replaces `nvm`, `sdkman`, `jenv`, and `pyenv`. It swaps versions of Java, Node, and Python instantly based on your current directory.
  * `mise use x`
* **Zsh:** Framework-less configuration. Purged of Oh-My-Zsh bloat to ensure the shell is ready the millisecond the window opens.

### 2. High-Performance CLI Tools
* **Eza:** Modern `ls` with icons and Git integration. Configured with a defensive fallback in `~/.aliases`.
* **Starship:** A cross-platform, Rust-based prompt. Highly customizable for cloud context (OpenShift/K8s/AWS).
* **Zoxide:** A smarter `cd` command (`z`) that learns your frequent paths.
* **Atuin:** Replaces standard history with a SQLite database, allowing for encrypted, searchable command history.
  * Flat `.zsh_history`, so it'll show what I ran in x directory
* **Fzf:** A fuzzy finder used for interactive history searches and cloud profile switching.
  * `Cmd+T` to find files, `Alt+C` to search current session's history

### 3. Terminals & Multiplexers
* **WezTerm (Ubuntu):** GPU-accelerated, configured via Lua. Currently set to **font-size 10.5**.
* **iTerm2 (macOS):** Configured with **OSC 52** support to bridge the system clipboard to remote sessions.
* **Tmux:** Persistent terminal sessions with a unified configuration for window management and splits.

---

## 📋 Standard Operating Procedures (SOP)

>  Never edit a file in your `$HOME` directory directly.

1.  **Modify Configuration:** `chezmoi edit <file>` (e.g., `chezmoi edit ~/.aliases`).
2.  **Generate & Deploy:** `chezmoi apply`.
3.  **Hot Reload:** `reload` (alias for `source ~/.zshrc`).
4.  **Sync Machines:** `git push` from the source directory, then `chezmoi update` on the other machine.

