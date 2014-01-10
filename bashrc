# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:/usr/local/bin:$PATH"

# Color codes
. ~/dotfiles/bin/bash_colors.sh

# rbenv
if [ -d "$HOME/.rbenv/shims" ] ; then
  eval "$(rbenv init -)"
fi

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/secrets can be used for other settings you don’t want to commit.
for file in ~/dotfiles/{path,bash_prompt,exports,aliases,local_aliases,functions,secrets}; do
    [ -r "$file" ] && source "$file"
done
unset file

COMPLETION="${HOME}/dotfiles/completion.bash/*.bash"
for config_file in $COMPLETION
do
  source $config_file
done

# Load Tab Completion
[ -f "$(brew)" ] && [ -f "$(brew --prefix)/etc/bash_completion" ] && source $(brew --prefix)/etc/bash_completion

