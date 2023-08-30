# -----------------
# ZSH CONFIGURATION 
# -----------------

# oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# -----------
#  OH-MY-ZSH
# -----------

# THEME
ZSH_THEME="jonathan"


# ---------
# ZSH style
# ---------

# disable omz
zstyle ':omz:update' mode disabled  # disable automatic updates


# -------------
#  ZSH PLUGINS
# -------------

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# -------------------
# USER CONFIGURATION
# -------------------

# You may need to manually set your language environment
export LANG=pt_BR.UTF-8

# On-demand rehash
zshcache_time="$(date +%s%N)"

autoload -Uz add-zsh-hoo

rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}

add-zsh-hook -Uz precmd rehash_precmd

# ---------
#  ALIASES 
# ---------

# general alias
alias c='clear'
alias nv='nvim'

# omz
alias zshconfig="geany ~/.zshrc"
alias ohmyzsh="thunar ~/.oh-my-zsh"

# ls
alias ls='lsd'
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -A'
alias lm='ls -m'
alias lr='ls -R'
alias lg='ls -l --group-directories-first'

# git
alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'

# pacman
alias pc='sudo pacman -S'
