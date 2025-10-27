set -gx EDITOR nvim
set -gx VISUAL nvim

set -gx NVM_DIR $HOME/.nvm
set -gx PF_ASCII "gruvbox"
set -gx BAT_THEME gruvbox
set -x NVM_DIR ~/.nvm
set -g fish_key_bindings fish_vi_key_bindings

bind \cf 'tmux-sessionizer'
bind \ct 'tmux a'

alias vim nvim
alias p pnpm
alias ff fastfetch
alias ls 'eza --icons'
alias la 'eza --icons --all'
alias ll 'eza --icons -la'
alias lla 'eza --icons -la --long'
alias grep 'rg --color=always'
alias top 'btop'
alias tree 'eza --icons --tree'
alias mount 'lsblk'
alias df 'df -h'
alias du 'du -h --max-depth=1'
alias dcu 'docker compose up -d'

source ~/script/.work.fish

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
