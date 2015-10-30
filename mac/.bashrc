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

