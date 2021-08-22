# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# Some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Starts a local HTTP server using Python in working dir
alias httpserver='python -m http.server'

# Usage: cat file.json | asjson
alias json_pp='python -mjson.tool'

alias k='kubectl'

#myip(){
#  curl -s https://ipinfo.io/json | jq .ip | sed -e 's/\"//g' | pbcopy
#  curl -s https://httpbin.org/ip | jq .origin | sed -e 's/\"//g' | pbcopy
#}

sshls(){
  for key in ~/.ssh/id_*; do ssh-keygen -l -f "${key}"; done | uniq
}

#getsecret(){
#  echo -n $1 | base64 -d | sed -e 's/\n//g' | pbcopy
#}

#setsecret(){
#  echo -n $1 | base64 | sed -e 's/\n//g' | pbcopy
#}

tameouvindo() {
  sudo lsof -iTCP -sTCP:LISTEN
}
