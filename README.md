# About

This reposity contains a lightweight vim+zsh+tmux configuration file, which makes your terminal more friendly and smart.
It enable the most of basic functions and help you to install some useful Plugins.

![preview](https://i.imgur.com/AhgjxHu.png)

# Quick Start

- Put ```.vimrc```, ```.zshrc``` and ```.tmux.conf``` in the user's home directory ```~/```.
- Put ```sychelsea.zsh-theme``` in ```~/.oh-my-zsh/custom/themes/```.

# Vim Configuration
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
## Install Plugins by Vundle
### Install Vundle Plugins
1. Set up Vundle  ```git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim```
2. Use command ```:PluginInstall``` in vim to install Plugins.

See [the guide of Vundle](https://github.com/VundleVim/Vundle.vim#quick-start) for advanced configuration.

### Commands for Puglin Installation 
#### YouCompleteMe
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

#### yapf
Used in python auto formatting.
```
$ pip install yapf
```
If ```yapf``` is not found after installation, add its directory to the environment path. It is usually installed in ```\usr\local\bin``` or ```~\.local\bin```.


# Zsh Configuration
- Change the path to your oh-my-zsh installation in line 8. 
- The last two lines is used to bind HOME and END keys. If your keys works well. Delete these two lines.
- The theme of zsh makes it looks like a default ubuntu bash with extra git information. 

# Tmux Configuration
## Custom Hotkeys
Mouse is enabled. You can use mouse to swith tab and tune the size of windows.
I add som custom hotkeys. Here are the main difference:
- ```Ctrl t```: Tmux function prefix ***(How to remember: 't' is the first letter of tmux!)***
  The following hotkeys should follow the tmux leader ```Ctrl t```
- ```\```: Split the window vertically ***(You don't need to press SHIFT compared to the default setting)***
- ```-```: Split the wimdow horizontally
- ```n```: New tab
- ```t```: Switch bwtween tabs. You can press ```t``` multiple times continuously. 
There may be some other custom hotkeys. You can check the comments in '.tmux.config' for more infomation.

# Fold 
Use ```zi``` to enable/disable fold
