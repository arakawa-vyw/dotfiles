export PATH=/usr/local/bin:$PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias ll='ls -laG'
alias vi='/usr/local/bin/vim'

# auto ll after cd
function cdls() {
  # cdがaliasでループするので\をつける
  \cd $1;
  ll;
}
alias cd=cdls
