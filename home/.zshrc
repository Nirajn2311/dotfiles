# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

### Homeshick ###
export HOMESHICK_DIR=/opt/homebrew/opt/homeshick
source "/opt/homebrew/opt/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

### ZSH Config ###
export ZSH="/Users/niraj/.oh-my-zsh"
ZSH_THEME="spaceship"
HISTTIMEFORMAT="%F %T " 
plugins=(git zsh-autosuggestions docker docker-compose flutter npm)
[ -f ~/.zsh-secrets ] && source ~/.zsh-secrets
source $ZSH/oh-my-zsh.sh

### Homebrew ###
eval "$(/opt/homebrew/bin/brew shellenv)"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
export NODE_ENV=development
export PATH="/opt/homebrew/opt/mongodb-community@5.0/bin:$PATH"
export PATH="/Users/niraj/fvm/default/bin:/Users/niraj/.pub-cache/bin:$PATH"
export PATH="/Users/niraj/Library/Android/sdk/build-tools/33.0.0:$PATH"
export PATH="/Users/niraj/Library/Android/sdk/cmdline-tools/latest/bin:$PATH"
export PATH="/Users/niraj/Library/Android/sdk/platform-tools:$PATH"
export PATH="/Users/niraj/Library/Android/sdk/emulator:$PATH"
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/niraj/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

export FLUTTER_ROOT="/Users/niraj/fvm/default"


eval "$(op completion zsh)"
compdef _op op

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export GPG_TTY=$(tty)

eval "$(jenv init -)"
eval "$(rbenv init - zsh)"
eval "$(thefuck --alias)"
eval "$(thefuck --alias fix)"
eval "$(github-copilot-cli alias -- "$0")"
eval "$(starship init zsh)"
export VISUAL="nano"

### Pyenv ###
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

### Aliases ###
alias nls="npm ls"
alias ngls="npm ls --location=global"
alias fbuild="flutter pub run build_runner build --delete-conflicting-outputs"
alias pn=pnpm

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
