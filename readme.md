# Requirement for this dotfiles

The setting for this dotfiles is mainly for following environment:

- Mac OS X Mountain Lion
- homesick
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- rbenv + ruby installer + rbenv-default-gems + [rbenv-gem-rehash](https://github.com/sstephenson/rbenv-gem-rehash)
- subl


# Steps to Set up the mac

- Setup google account
- Setup apple account
- Install and setup Alfred if required
	- Use alt + ` for hotkey
- Install XCode & XCode commandline tools

	```
	xcode-select --install
	```
- Install Postgres
	- Download it from heroku
	- Set it to open on start up
- Generate ssh key

	```
	ssh-keygen -t rsa -C "leo.liang@devs.org"
	```	
- Change layout for terminal
- Install oh-my-zsh and switch shell to zsh
- Install homebrew
- Install gcc
- Install homesick

	```
	gem install homesick
	```
- Install rbenv and ruby-installer	
- Install dot-files
	
	```
	homesick clone leomao10/mac-dotfiles.git
	homesick symlink mac-dotfiles
	```
