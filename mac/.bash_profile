# .bashrc自体がシンボリックリンクとなっていると
# ログイン後にリンク先のパスに移動してしまうため
# .bashrcを読み込む前のパスを確保しておき
# .bashrc読み込み後に確保したパスへ移動するようにする。
pwd=$PWD

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# "\cd"はllを伴うcd回避。
\cd $pwd

