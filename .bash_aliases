alias i="sudo nala install"
alias hs="history | grep"
alias src="source ~/.bashrc"

function hscp() {
  history | fzf --height=40% --layout=reverse --border \
  --prompt="Select a command: " | \
  cut -c 1-7 --complement | xsel -ib
  echo "Copied to clipboard: $(xsel -bo)"
}
