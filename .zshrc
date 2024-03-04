# General
alias ls="exa"
alias lsf="ls -l -f -h -a --sort=name --no-permissions --no-user --color=always --icons"
alias lsd="ls -l -F -T -R -a --sort=name --no-permissions --no-user --level=1 --color=always --icons"
alias cat="bat"
alias grep="ripgrep"

# Pacman
alias pm="sudo pacman"
alias install="pm -Syyu"
alias uninstall="pm -Rcns"
alias i="install"
alias ui="uninstall"

# Paru
alias pa="paru"
alias pa-install="paru -Syyu"
alias pa-uninstall="paru -Rcns"
alias pai="pa-install"
alias paui="pa-uninstall"

# pnpm
export PNPM_HOME="/home/nikola/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# zoxide
eval "$(zoxide init zsh --no-cmd --cmd cd)"

neofetch
