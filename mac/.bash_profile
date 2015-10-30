if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# TODO:
# .bashrc自体がシンボリックリンクとなっていると
# ログイン後にリンク先のパスに移動してしまうため
# $HOMEに移動するようにしておく。
# "\cd"はllを伴うcd回避。
\cd ~/

