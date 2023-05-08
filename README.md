# Dot files
##TODO
- no icons on MacOSX
Download 'Sauce Code Pro' font from https://www.nerdfonts.com/font-downloads
Install
    - SauceCodePro Nerd Font Complete Mono.ttf
    - SauceCodePro Bold Nerd Font Complete Mono.ttf
    - SauceCodePro Italic Nerd Font Complete Mono.ttf
-


### Install
ansible-playbook <-i inventory/<os>> install.yml

## Zsh
- Change shell to zsh `chsh -s /bin/zsh` and logout/login to apply

### packages required
Arch Linux
```
yay -S \
  starship
```

MacOS
```
brew install starship
```

## NeoVim
NeoVim plugins can be install by running `:PackerInstall`

### packages required
Arch Linux
```
yay -S \
    neovim \
    nvim-packer-git \
    rust-analyzer \
    yaml-language-server \
    bash-language-server \
    ansible-language-server
```

MacOS
```
brew install \
    neovim \
    rust-analyzer \
    yaml-language-server \
    bash-language-server \
    ansible-language-server \
    tmux
```
Packer on OSX needs to be cloned from GitHub
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```


