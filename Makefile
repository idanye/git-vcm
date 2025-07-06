BIN_DIR := $(HOME)/bin
SCRIPT := git-vcm
INSTALL_PATH := $(BIN_DIR)/$(SCRIPT)

install:
	@mkdir -p $(BIN_DIR)
	@cp $(SCRIPT) $(INSTALL_PATH)
	@chmod +x $(INSTALL_PATH)
	@git config --global alias.vcm '!$(INSTALL_PATH)'
	@echo "✅ Installed as git vcm (alias configured)."

zsh-setup:
	@grep -qxF 'export PATH="$$HOME/bin:$$PATH"' ~/.zshrc || echo 'export PATH="$$HOME/bin:$$PATH"' >> ~/.zshrc
	@echo '✅ Added ~/bin to PATH in ~/.zshrc (if not already). Run: source ~/.zshrc'

uninstall:
	@rm -f $(INSTALL_PATH)
	@git config --global --unset alias.vcm || true
	@echo "🧹 Uninstalled git vcm and cleaned up alias."

.PHONY: install zsh-setup uninstall
