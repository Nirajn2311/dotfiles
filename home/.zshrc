# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
### Homeshick ###
export HOMESHICK_DIR=$HOME/.homesick/repos/homeshick
source "$HOME/.homesick/repos/homeshick/homeshick.sh"

### Homebrew ###
eval "$(/opt/homebrew/bin/brew shellenv)"
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

### Node.js/NVM ###
#export NODE_ENV=development
export NVM_AUTO_USE=true
export NVM_COMPLETION=true

### ZSH Config ###
# Set environment variables
export ZSH="$HOME/.oh-my-zsh"
HISTTIMEFORMAT="%F %T "

# Load plugins
plugins=(git docker docker-compose flutter npm wd) # Oh-my-zsh built-in plugins
plugins+=(zsh-autosuggestions zsh-nvm zsh-better-npm-completion autoupdate) # Custom plugins

# Load secrets
[ -f ~/.zsh-secrets ] && source ~/.zsh-secrets

# Auto update without prompt
zstyle ':omz:update' mode auto

# Load OMZ
source $ZSH/oh-my-zsh.sh

### PNPM ###
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

### Bun ###
# bun completions
[ -s "/Users/niraj/.oh-my-zsh/completions/_bun" ] && source "/Users/niraj/.oh-my-zsh/completions/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

### Tabtab ###
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

### Flutter/FVM ###
export FLUTTER_ROOT="$HOME/fvm/default"
export PATH="$HOME/fvm/default/bin:$HOME/.pub-cache/bin:$PATH"
## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/niraj/.dart-cli-completion/zsh-config.zsh ]] && . /Users/niraj/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

### Rust ###
export PATH="$HOME/.cargo/bin:$PATH"

### Pyenv ###
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

### Jenv ###
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

### Rbenv ###
eval "$(rbenv init - zsh)"

### 1Password ###
eval "$(op completion zsh)"
compdef _op op

### iTerm2 ###
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

### The Fuck ###
eval "$(thefuck --alias)"
eval "$(thefuck --alias fix)"

### GH CoPilot CLI ###
eval "$(github-copilot-cli alias -- "$0")"

### Atuin ###
eval "$(atuin init zsh --disable-up-arrow)"

### Starship prompt ###
eval "$(starship init zsh)"

### PATH ###
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="/opt/homebrew/opt/mongodb-community@5.0/bin:$PATH"
export PATH="$HOME/Library/Android/sdk/cmdline-tools/latest/bin:$PATH"
export PATH="$HOME/Library/Android/sdk/emulator:$PATH"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"

### Shell Env Var ###
export VISUAL="nano"
export EDITOR="$VISUAL"

### Aliases ###
alias nls="npm ls"
alias ngls="npm ls --location=global"
alias fbuild="dart run build_runner build --delete-conflicting-outputs"
alias pn=pnpm
alias home="homeshick"
alias brew-update="brew update; brew upgrade; brew doctor; brew bundle dump --force --file=~/Brewfile"
alias brew-cleanup-all="brew cleanup --prune=all -s"
alias cat="bat"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
