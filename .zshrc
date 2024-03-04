# Options
setopt PROMPT_SUBST

# Autoloads
autoload -U colors && colors
eval "$(zoxide init zsh --no-cmd --cmd cd)"

## Functions
function path_info() {
	echo "${PWD/#$HOME/~}"
}

# General
alias ls="exa"
alias lsf="ls -l -f -h -a --sort=name --no-permissions --no-user --color=always --icons"
alias lsd="ls -l -F -T -R -a --sort=name --no-permissions --no-user --level=1 --color=always --icons"
alias cat="bat"
alias grep="rg"

# Pacman
alias pm="sudo pacman"
alias pmi="pm -Syyu"
alias pmui="pm -Rcns"

# Paru
alias pa="paru"
alias pai="paru -Syyu"
alias paui="paru -Rcns"

# pnpm
export PNPM_HOME="/home/nikola/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

PROMPT='%F{8}[%n@%m]$reset_color %F{7}$(path_info) %%$reset_color '

neofetch
