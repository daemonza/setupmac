### Setupmac

This is a Ansible(https://www.ansible.com/) playbook to quickly setup 
a Mac to how I like it.

bootstrap ansible to macbook

Ansible to install homebrew and cask? of bootstrap dit ook?

to install cask :
brew tap caskroom/cask

cmdline :
* autojump
* kubectl
* helm
* httpie
* oh-my-zsh
    - with my oh-my-zsh configuration 

editors :
* neovim
    - with my neovim configuration
* spacemacs
    - with my spacemacs configuration

apps :
* slack
* chrome
* iTerm2
* 1Password
* zwift
downloaded to ~Downloads
* caffeine

development : 
* docker
* minikube
* Go
  how to handle go path? 
* vagrant

#### usefull links

https://github.com/geerlingguy/mac-dev-playbook
https://github.com/adamchainz/mac-ansible

#### uninstall homebrew and everything installed through it.
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
```
