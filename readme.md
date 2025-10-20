# Requirement for this dotfiles

The setting for this dotfiles is mainly for following environment:

- Mac OS X 10.9 Mavericks or above
- zsh
- rbenv
- nvm
- rcm
- atom

# Steps to Set up the mac
- Install and setup Alfred if required
	- Use alt + ` for hotkey

- [Generate ssh key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

- [Add ssh key to Github](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

- [Generate access token for current laptop](https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line#using-a-token-on-the-command-line)

- Install homebrew

	```
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	```

- Download dotfiles

	```
	git clone git@github.com:leomao10/mac-dotfiles.git ~/.dotfiles
	```

- Symlink Brewfile
	```
	ln -s .dotfiles/Brewfile ~/Brewfile
	ln -s .dotfiles/Brewfile.lock.json ~/Brewfile.lock.json
	```

- Install rest of dependent apps with

	```
	brew bundle
	```

- Setup all other dotfiles with rcm
	```
	ln -s ~/.dotfiles/rcrc ~/.rcrc
	rcup
	```

- Install zsh plugins
	```
	zplug install
	```

- Change layout for terminal(MAN, font 14)
