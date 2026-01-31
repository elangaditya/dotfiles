# export TERM=xterm-256color
# Go related stuff
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin/

# Shell stuff
alias sr='source ~/.zshrc'

autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line
export EDITOR=nvim

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

case "$(uname)" in
  "Darwin")
    source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    export PATH="/opt/homebrew/opt/postgresql@18/bin:$PATH"
    ;;
  "Linux")
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    ;;
esac
# Macos system

# . "$HOME/.local/bin/env"

source <(fzf --zsh)
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/macbook/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/macbook/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/macbook/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/macbook/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
