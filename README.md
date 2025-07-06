# Git VCM

An interactive Git commit CLI tool designed for teams using a `VAL-XXXX` branch naming convention.

Built with 🐚 Bash and powered by [gum](https://github.com/charmbracelet/gum) for stylish terminal UX.

---

## ✨ Features

* Parses branch prefix like `VAL-1234`
* Commit type selection with emoji UI
* Validates staged changes and prefix
* Works with Git via `git vcm` alias

---

## 🚀 Quick Setup

```bash
# Clone and install
git clone https://github.com/your-org/git-vcm.git && cd git-vcm
make install
```

---

## 🧑‍💻 For Zsh Users

Make sure the `~/bin` directory (where the tool is installed) is in your shell path:

```bash
make zsh-setup
source ~/.zshrc
```

---

## 📦 Makefile Targets

```makefile
install:     # Copy git-vcm script to ~/bin and chmod +x
zsh-setup:   # Add ~/bin to PATH in ~/.zshrc if missing
uninstall:   # Remove the tool and Git alias
```

---

## 📝 Usage

```bash
git add .
git vcm
```

You’ll be prompted to:

1. Choose a commit type
2. Write a short description
3. Review your message and approve or cancel to commit

Commit message format:

```
VAL-1234 [feat] Add login flow
```

---

## 🛠️ Requirements

* Bash
* [gum](https://github.com/charmbracelet/gum)
* Git

---

## 🙌 Contributing

Pull requests welcome! Suggestions for improvements and customization options are always appreciated.

---

## 🔒 License

MIT
