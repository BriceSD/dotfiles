# Path to your oh-my-zsh installation.
export ZSH=/home/brice/.oh-my-zsh
source ~/.bash_aliases

# load zgen
source "${HOME}/.zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    zgen load jimmijj/zsh-syntax-highlighting

    # autosuggestions should be loaded last
    zgen load tarruda/zsh-autosuggestions

    # plugins
    zgen oh-my-zsh plugins/git
#    zgen oh-my-zsh plugins/vim
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/web-search
    zgen oh-my-zsh plugins/command-not-found

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    #zgen oh-my-zsh themes/arrow

    # save all to init script
    zgen save
fi
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git web-search)

# Allows editing the command line with an external editor
zle -N edit-command-line
ZSH_HIGHLIGHT_HIGHLIGHTERS+=( main brackets pattern )

# Mode vim
#bindkey -v

# On remappe pour le bépo
#bindkey -a c vi-backward-char
#bindkey -a r vi-forward-char
#bindkey -a t vi-down-line-or-history
#bindkey -a s vi-up-line-or-history
#bindkey -a $ vi-end-of-line
#bindkey -a 0 vi-digit-or-beginning-of-line
#bindkey -a h vi-change
#bindkey -a H vi-change-eol
#bindkey -a dd vi-change-whole-line
#bindkey -a l vi-replace-chars
#bindkey -a L vi-replace
#bindkey -a k vi-substitute

# Set up prompt
#if [[ ! -n "$ZSHRUN" ]]; then

    # Fish shell like syntax highlighting for Zsh:
    # git clone git://github.com/BriceSD/zsh-syntax-highlighting ~/dotfiles/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    #   $HOME/dotfiles/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/
#    if [[ -d $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/ ]]; then
#        source $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#        ZSH_HIGHLIGHT_HIGHLIGHTERS+=( main brackets pattern )
#    fi
#fi

export EDITOR="nvim"
export VISUAL=$EDITOR
export GIT_EDITOR=$EDITOR
# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/brice/.cabal/bin"
# export MANPATH="/usr/local/man:$MANPATH"
source $ZSH/oh-my-zsh.sh

# Enable autosuggestions automatically.
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#SDK path
export ANDROID_HOME=/opt/android-sdk

export PATH=/opt/android-sdk/platform-tools:$PATH
export PATH=/opt/android-sdk/tools:$PATH

export NVM_DIR="/home/brice/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
