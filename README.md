## Jesse's dotfiles

My dotfiles, using [Zack's](https://github.com/holman/dotfiles) dotfiles for inspiration.

### components

- __topic/\*.zsh__: Any files ending in ``.zsh`` get loaded into the environment.
- __topic/\*.symlink__: Any files ending in ``.symlink`` get symlinked to ``$HOME``. This is so you can keep all of those versioned in you dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run ``script/bootstrap``.

### install

Run
```
git clone https://github.com/JesseBuesking/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
source script/bootstrap
```
This will symlink the appropriate files in ``.dotfiles`` to your home directory. Everything is configured and tweaked within ``~/.dotfiles``.
