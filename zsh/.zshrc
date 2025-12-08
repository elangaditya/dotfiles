# export TERM=xterm-256color
# Go related stuff
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin/

# Shell stuff
alias sr='source .zshrc'

# get idf.py
alias get_idf='. $HOME/esp-idf/export.sh'

# ls color
alias ls='ls --color=always'
alias grep='grep --color=always'

# nvim aliases
export PATH="$PATH:/opt/nvim-linux64/bin"
alias vi='nvim'
alias vic='cd ~/.config/nvim && nvim && cd -'
alias viz='cd && nvim ~/.zshrc && cd -'
alias vio='cd ~/brain && nvim && cd -'

# Set up fzf key bindings and fuzzy completion
eval "$(starship init zsh)"
# Syntax highlighting
mac="Darwin"
case `uname` in
  Darwin)
    export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters
    ;;
  Linux)
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    ;;
esac

# Macos system

# . "$HOME/.local/bin/env"

source <(fzf --zsh)
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
