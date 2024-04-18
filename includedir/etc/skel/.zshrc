export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.config/emacs/bin:$HOME/.local/bin:$HOME/go/bin:$HOME/.gem/bin:$PATH"
export GEM_HOME="$HOME/.gem"

export VISUAL=vim
export EDITOR=vim

plugins=(git)

source $ZSH/oh-my-zsh.sh

. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(starship init zsh)"
alias dev="cd ~/Development"
alias pdev="cd ~/PDevelopment"

alias vchup="xbps-install -nuM | wc -l"
alias vpu="sudo xbps-install -Su"
alias vpi="sudo xbps-install -S"
alias vpr="sudo xbps-remove -R"
alias vpq="xbps-query -Rs"
alias vpc="sudo xbps-remove -Oo"

alias wmc="nvim ~/Development/priv/dwm/config.h"

PATH="/home/plov/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/plov/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/plov/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/plov/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/plov/perl5"; export PERL_MM_OPT;
