export PATH="$HOME/.local/bin:$PATH"

. /usr/local/etc/profile.d/z.sh

eval "$(stack --bash-completion-script stack)"

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi
