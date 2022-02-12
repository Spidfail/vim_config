# vim_config

Git to store and share my own config. It's simple but effective.

## To install it :

If you don't have Vim installed, check the [Vim website](https://www.vim.org/download.php) to install it.

For Macos users, I recommend you to use the package manager [brew](https://brew.sh/index_fr) for programs like this (neovim, llvm, python, etc.).

Then, run the following **inside** the git directory :
```
[ -d "~/.vim" ] && mv ~/.vim ~/.vim.old ; cp -R ./.vim ~/
[ -e "~/.vimrc" ] && mv ~/.vimrc ~/.vimrc.old ; cp ./.vimrc ~/
```
> Theses commands should not work if you have a different config's files management.

Sources are copied from there to your `$HOME`/`~` directory, where your `.vimrc` config file and `.vim` plugin directory should be.

> Your old config (if there is one) is renamed by adding the extension `.old` and remain in the `$HOME` directory.

To use the syntax analyser with c/c++ code, you need to have [clangd](https://clangd.llvm.org/installation.html) installed and available in your `$PATH`.

## Things to know :

This configuration uses [vim plug](https://github.com/junegunn/vim-plug), a freaking easy-to-use plugin manager.

### Configuration of Vim fonctionnalities

The **syntax** colorscheme is on and you can use your mouse. I have my proper intendation and tabulation management. The **indentation** is symbolized by `|\\\` character.

If you are in insert mode to type text (`I`, `i`, `A`, `a` and more), the line's number order changes to be in *relative numbers* order. It helps count lines from a particular point.

### List of plugins

- [gruvbox](https://github.com/morhetz/gruvbox) : colorscheme to change the old vim look
- [vim-airline](https://github.com/vim-airline/vim-airline) : gives a nice look to the line bar, it helps you while coding too.
- [nerdtree](https://github.com/preservim/nerdtree) : a nice file system explorer. Use `Ctrl-t` / `Ctrl-n` to open or close it, or `Ctrl-f` to trigger the find system.
In it, you can open a file in current window with the key `o`, or `i`/`s` in horizontal/vertical split mode.
- [syntastic](https://github.com/vim-syntastic/syntastic) : a synthax checker for c/c++ at this time.
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter) : 'A Vim plugin which shows a git diff in the sign column.' What else ?
- [vim-startify](https://github.com/mhinz/vim-startify) : run `vim` with no arguments and you'll see.

### To manage your plugins

To install a plugin, add `Plug '[creator]/[project-name]'` between `call plug#begin()` and `call plug#end()`. Then, run `:PlugInstall` when vim is open.

To erase it, remove the line where the plugin name is written from `.vimrc` and run `:PlugClean`.

Check vim plug website for more or trigger tab completion after typing `:Plug` !

### And to change the colorscheme only ?

Install the scheme plugin (for example [tokyonight.vim](https://github.com/ghifarit53/tokyonight-vim) or [nord-vim](https://github.com/arcticicestudio/nord-vim)) and replace `gruvbox` by his name at the line where `colorscheme` is called.

I personnaly use tokyonight quite often.

### Any advice ?

You also can install incone's scheme for your NERDTree.

You can open a terminal in vim by typing `:term`.

Try to insall and use [FZF](https://github.com/junegunn/fzf) or *Fuzzy finder*. This is a blazzing faste finder with many options. It can be used inside and outside of Vim, for example in your terminal.

Good luck with Vim,

Don't forget to learn his power step by step not all at once.
