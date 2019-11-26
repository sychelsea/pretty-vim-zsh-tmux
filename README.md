# About

This reposity contains a lightweight vim configuration file, ```.vimrc``` which makes your vim more friendly and smart.
It enable the most of basic functions and help you to install some useful Plugins.

It uses [VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim) to manage vim plugins. 
## Puglins contained
- [NLKNguyen/papercolor-theme](https://github.com/NLKNguyen/papercolor-theme)
- [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)
- [vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
- [powerline/powerline-fonts](https://github.com/powerline/fonts)
- [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)
- [ggdroot/indentLine](https://github.com/Yggdroot/indentLine)
- [ycm-core/YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
- [artur-shaik/vim-javacomplete2](https://github.com/artur-shaik/vim-javacomplete2)
- [davidhalter/jedi-vim](https://github.com/davidhalter/jedi-vim)

# Quick Start

Put ```.vimrc``` file in the user's home directory ```~/```

# Install Plugins by Vundle
## Install Vundle Plugins
1. Set up Vundle  ```git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim```
2. Use command ```:PluginInstall``` in vim to install Plugins.

See [the guide of Vundle](https://github.com/VundleVim/Vundle.vim#quick-start) for advanced configuration.

## Install Commands for Puglins
### YouCompleteMe
```YouCompleteMe``` need to be compiled before use. 
* Open the directory. 
  ```
  $ cd ~/.vim/bundle/YouCompleteMe
  ```
* Install ycm for all the languages.
  ```
  $ python3 install.py --all
  ```
See the [installation guide](https://github.com/ycm-core/YouCompleteMe#installation) for more instructions.

### yapf
Used in python auto formatting.
```
$ python -m pip install yapf
```
