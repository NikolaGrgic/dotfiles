## Options
setopt PROMPT_SUBST

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
alias cat="bat"
alias grep="rg"

## Pacman
alias pm="sudo pacman"
alias pmi="pm -Syyu"
alias pmui="pm -Rcns"

## Paru
alias pa="paru"
alias pai="paru -Syyu"
alias paui="paru -Rcns"

## pnpm
export PNPM_HOME="/home/nikola/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

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

neofetch
