<h1 align="center">dotfiles</h1>
<h3 align="center">
    <b><a href="https://github.com/ohmyzsh/ohmyzsh">oh-my-zsh</a> + <a href="https://github.com/tmux/tmux">tmux</a> + <a href="https://github.com/neovim/neovim">neovim</a> = :green_heart:</b>
</h3>

### Prerequisites
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)
- [exa](https://github.com/ogham/exa) (modern replacement for ls)

## Installation 
```bash
git clone --depth 1 https://github.com/JohannesTheiss/.dotfiles \
    ~/.dotfiles
```

---

### Install [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh)
Link the config file:
```bash
ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc
ln -sf ~/.dotfiles/zsh/zsh_aliases ~/.zsh_aliases
```

Create the zsh history file:
```
mkdir -p ~/.cache/zsh && touch ~/.cache/zsh/history
```
##### Used zsh plugins
- [git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)
- [autojump](https://github.com/wting/autojump) (installation required)
- [colorize](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colorize)
- [zsh-interactive-cd](https://github.com/changyuheng/zsh-interactive-cd)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [web-search](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search)

##### Install zsh plugins
<b>Pacman</b>
```bash
sudo pacman -S oh-my-zsh zsh-autosuggestions zsh-syntax-highlighting
```
Link the plugins:
```
ln -s /usr/share/zsh/plugins/zsh-autosuggestions $ZSH/custom/plugins
ln -s /usr/share/zsh/plugins/zsh-syntax-highlighting $ZSH/custom/plugins
```

<b>Brew</b>
```bash
brew install autojump
```

---

### Install [tmux](https://github.com/tmux/tmux)
```bash
sudo pacman -S tmux
```
```bash
brew install tmux
```

Link the config file:
```bash
ln -sf ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
```

---

### Install [Neovim](https://github.com/neovim/neovim)
```bash
sudo pacman -S neovim
```
```bash
brew install neovim
```

##### Prerequisites
- [`packer.nvim`](https://github.com/wbthomason/packer.nvim)

##### Linux
```bash
rm -rf ~/.config/nvim
ln -sf ~/.dotfiles/nvim ~/.config/nvim
```

Create the vim undo dir:
```bash
mkdir -p ~/.vim/undodir
```
macOS
```bash
mkdir -P ~/.vim/undodir
```

Open the `packer.lua` and run the following commands:
```vim
:so
:PackerSync
:lua ColorMyPencils()
```
or
```bash
nvim ~/.dotfiles/nvim/lua/joker/packer.lua -c so -c PackerSync
nvim -c "lua ColorMyPencils()"
```

<b>NOTE:</b> you may need to take a look at the `nvim-treesitter` [installation](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation#packernvim)

Check health on neovim
```bash
nvim -c checkhealth
```

###### Optional
Config for [Vim](https://github.com/vim/vim)
```bash
ln -sf ~/.dotfiles/vim/vimrc ~/.vimrc
```
Config for [IdeaVim](https://github.com/JetBrains/ideavim)
```bash
ln -sf ~/.dotfiles/vim/vimrc ~/.ideavimrc
```


---

## Tools
- [fzf](https://github.com/junegunn/fzf) (fzf is a general-purpose command-line fuzzy finder.)
- [httpie](https://httpie.io/)



## Font
`JetBrainsMono Nerd Font` from [NerdFonts](https://github.com/ryanoasis/nerd-fonts) (https://www.nerdfonts.com/font-downloads)


