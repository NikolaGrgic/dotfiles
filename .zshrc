## Options
setopt PROMPT_SUBST

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt SHARE_HISTORY

export PATH="$PATH:/home/nikola/.local/bin"

## Autoloads
autoload -U colors && colors
eval "$(zoxide init zsh --no-cmd --cmd cd)"

## Functions
function path_info() {
	echo "${PWD/#$HOME/~}"
}

## General
alias ls="exa"
alias lsf="ls -l -f -h -a --sort=name --no-permissions --no-user --color=auto --icons"
alias lsd="ls -l -F -T -R -a --sort=name --no-permissions --no-user --level=1 --color=auto --icons"
alias cat="batcat"
alias grep="rg"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PNPM_HOME="/home/nikola/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

export FLYCTL_INSTALL="/home/nikola/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

## Keybinds (SMKX/RMKX Variants)

# Home
bindkey '\e[H'  beginning-of-line
bindkey '\eOH'  beginning-of-line

# End
bindkey '\e[F'  end-of-line
bindkey '\eOF'  end-of-line

# Up
# bindkey '\e[A' up-line-or-beginning-search
# bindkey '\eOA' up-line-or-beginning-search

# Down
# bindkey '\e[B' down-line-or-beginning-search
# bindkey '\eOB' down-line-or-beginning-search

# Left
bindkey '\e[D' backward-char
bindkey '\eOD' backward-char

# Right
bindkey '\e[C' forward-char
bindkey '\eOC' forward-char

# Delete
bindkey '\e[3~' delete-char

# Backspace
bindkey '\e?' backward-delete-char

# PageUp
# bindkey '\e[5~' up-line-or-history

# PageDown
# bindkey '\e[6~' down-line-or-history

# Ctrl+Left
bindkey '\e[1;5D' backward-word

# Ctrl+Right
bindkey '\e[1;5C' forward-word

# Shift+Tab
bindkey '\e[Z' reverse-menu-complete

PROMPT='%F{8}[%n@%m]$reset_color %F{7}$(path_info) %%$reset_color '

fastfetch
