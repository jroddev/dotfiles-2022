# Dot files


### Install
ansible-playbook <-i inventory/<os>> install.yml

## Zsh
- Change shell to zsh `chsh -s /bin/zsh` and logout/login to apply

### packages required
```
yay -S \
  starship
```

## NeoVim
NeoVim plugins can be install by running `:PackerInstall`

### packages required
```
yay -S \
    neovim \
    nvim-packer-git \
    rust-analyzer \
    yaml-language-server \
    bash-language-server \
    ansible-language-server
```
