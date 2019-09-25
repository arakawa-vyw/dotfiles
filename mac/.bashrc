export PATH=/usr/local/bin:$PATH

# "ls -G"時のディレクトリの前景色をblueからcyanに変更して見やすくする
# man ls
export LSCOLORS=gxfxcxdxbxegedabagacad

# crontab -eでの以下のエラー回避
# 'crontab: "/usr/bin/vi" exited with status 1'
export EDITOR=vim

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which plenv > /dev/null; then eval "$(plenv init -)"; fi

alias ll='ls -laG'
alias vi='/usr/local/bin/vim'

# 'gitk --all' occurs error...
# http://www.yorozu-sys.net/monooki/20151014002631
alias gitk='LANG=C gitk'
#alias gitka='gitk --all &'
alias gitka='LANG=C gitk --all &'
alias gitbrl='for k in `git branch --merged | sed s/^..//`; do echo -e `git log -1 --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k --`\\t"$k";done | sort'

# auto ll after cd
function cdls() {
  # cdがaliasでループするので\をつける
  \cd "$1";
  ll;
}
alias cd=cdls

# gitのbranchをterminal出力
# Homewbrewでgitをインストールしていないと以下のパス（シンボリックリンク）は存在しない
if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
    source /usr/local/etc/bash_completion.d/git-prompt.sh
fi
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    source /usr/local/etc/bash_completion.d/git-completion.bash

    ############### プロンプトに各種情報を表示
    # GIT_PS1_SHOWDIRTYSTATE
    # GIT_PS1_SHOWUPSTREAM
    # GIT_PS1_SHOWUNTRACKEDFILES
    # GIT_PS1_SHOWSTASHSTATE
    GIT_PS1_SHOWDIRTYSTATE=true
    GIT_PS1_SHOWUPSTREAM=true
    GIT_PS1_SHOWUNTRACKEDFILES=true

    ############### ターミナルのコマンド受付状態の表示変更
    # \u ユーザ名
    # \h ホスト名
    # \W カレントディレクトリ
    # \w カレントディレクトリのパス
    # \n 改行
    # \d 日付
    # \[ 表示させない文字列の開始
    # \] 表示させない文字列の終了
    # \$ $
    # export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
    export PS1='\[\033[00m\]\u@\h:\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
fi

