# Requirement for this dotfiles

The setting for this dotfiles is mainly for following environment:

- Mac OS X 10.9 Mavericks or above
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- rbenv
- nvm
- rcm
- atom

# Steps to Set up the mac
- Install and setup Alfred if required
	- Use alt + ` for hotkey

- Install XCode & XCode commandline tools

	```
	xcode-select --install
	```

- Generate ssh key

	```
	ssh-keygen -t rsa -C "leo.liang@devs.org"
	```

- [Add ssh key to Github](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

- [Generate access token for current laptop](https://help.github.com/articles/authorizing-a-personal-access-token-for-use-with-a-saml-single-sign-on-organization/)

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

- Symlink Brewfile
	```
	ln -s .dotfiles/Brewfile ~/Brewfile
	```

- Install rest of dependent apps with

	```
	homebrew bundle
	```

- Install oh-my-zsh and switch shell to zsh

- Setup all other dotfiles with rcm
	```
	ln -s ~/.dotfiles/rcrc ~/.rcrc
	rcup
	```

- Change layout for terminal(MAN, font 14)
