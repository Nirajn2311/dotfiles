# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

### Homeshick ###
export HOMESHICK_DIR=/opt/homebrew/opt/homeshick
source "/opt/homebrew/opt/homeshick/homeshick.sh"

### Homebrew ###
eval "$(/opt/homebrew/bin/brew shellenv)"
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

### ZSH Config ###
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="spaceship"
HISTTIMEFORMAT="%F %T " 
plugins=(git zsh-autosuggestions docker docker-compose flutter npm)
[ -f ~/.zsh-secrets ] && source ~/.zsh-secrets
source $ZSH/oh-my-zsh.sh

### N Config ###
export N_PREFIX="$HOME/n"
[[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"
export NODE_ENV=development

### PNPM ###
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

### Flutter/FVM ###
export FLUTTER_ROOT="$HOME/fvm/default"
export PATH="$HOME/fvm/default/bin:$HOME/.pub-cache/bin:$PATH"

### Pyenv ###
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

### Jenv ###
eval "$(jenv init -)"
export PATH="$HOME/.jenv/bin:$PATH"

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
alias fbuild="flutter pub run build_runner build --delete-conflicting-outputs"
alias pn=pnpm
alias home="homeshick"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
