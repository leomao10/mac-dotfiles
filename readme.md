# Requirement for this dotfiles

The setting for this dotfiles is mainly for following environment:

- Mac OS X 10.9 Mavericks or above
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- chruby + ruby installer + direnv
- rcm
- atom

# Steps to Set up the mac
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

	```
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	```

- Install homebrew bundle

	```
	brew tap Homebrew/bundle
	```

- Download dotfiles

	```
	git clone git@github.com:leomao10/mac-dotfiles.git ~/.dotfiles
	```

- Symlink Brewfiles
	```
	ln -s .dotfiles/Brewfiles ~/Brewfiles
	```

- Install rest of dependent apps with

	```
	homebrew bundle
	```

- Setup all other dotfiles with rcm
```
rcup ~/.dotfiles
```
