# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

# rbenv
if [ -d "$HOME/.rbenv/bin" ] ; then
  export PATH="$HOME/.rbenv/bin":$PATH
  eval "$(rbenv init -)"
fi

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/secrets can be used for other settings you don’t want to commit.
for file in ~/dotfiles/{path,bash_prompt,exports,aliases,functions,secrets}; do
    [ -r "$file" ] && source "$file"
done
unset file

# Load Tab Completion
COMPLETION="${HOME}/dotfiles/completion.bash/*.bash"
for config_file in $COMPLETION
do
  source $config_file
done
