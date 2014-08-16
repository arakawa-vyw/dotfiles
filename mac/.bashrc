export PATH=/usr/local/bin:$PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias ll='ls -laG'
alias vi='/usr/local/bin/vim'
alias gitka='gitk --all &'

# auto ll after cd
function cdls() {
  # cdがaliasでループするので\をつける
  \cd $1;
  ll;
}
alias cd=cdls

# gitのbranchをterminal出力
#
# git-prompt.sh, git-completion.bashは
# インストールしたgitに含まれているファイルからシンボリックリンクを張る
# cd;ln -s /usr/local/Cellar/git/1.8.5.2/etc/bash_completion.d/git-prompt.sh
# cd;ln -s /usr/local/Cellar/git/1.8.5.2/etc/bash_completion.d/git-completion.bash
if [ -f ~/git-prompt.sh ]; then
    source ~/git-prompt.sh
fi
if [ -f ~/git-completion.bash ]; then
    source ~/git-completion.bash
fi
GIT_PS1_SHOWDIRTYSTATE=true
# export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
export PS1='\[\033[00m\]\u@\h\:\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

