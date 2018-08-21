source $HOME/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle fancy-ctrl-z

# Load the theme.
# antigen theme refined

# Install other zsh plugins.
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions


# Tell antigen that you're done.
antigen apply

# Prepare for zsh-/bash-completions
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

# Load custom files
# Load all files in .zsh directory
if [ -d $HOME/.zsh ]; then
  for file in $HOME/.zsh/*.zsh; do
    source $file
  done
fi
# Load all files in .zsh/local directory
if [ -d $HOME/.zsh/local ]; then
  for file in $HOME/.zsh/local/*.zsh; do
    source $file
  done
fi

# access to online help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

# activate zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)
fpath=(/usr/local/share/zsh/completions $fpath)
fpath=(~/.zsh/completion $fpath)
